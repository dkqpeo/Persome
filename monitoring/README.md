# Persome 모니터링 가이드

Prometheus와 Grafana를 사용한 Spring Boot 애플리케이션 모니터링 설정 가이드입니다.

## 📋 사전 준비

- Docker 및 Docker Compose 설치
- Spring Boot 애플리케이션 실행 중 (포트 8080)

## 🚀 시작하기

### 1. 의존성 확인

`build.gradle`에 다음 의존성이 추가되어 있어야 합니다:

```gradle
implementation 'org.springframework.boot:spring-boot-starter-actuator'
runtimeOnly 'io.micrometer:micrometer-registry-prometheus'
```

### 2. Actuator 엔드포인트 확인

Spring Boot 애플리케이션 실행 후 다음 URL에 접속하여 메트릭을 확인합니다:

- Health: http://localhost:8080/actuator/health
- Metrics: http://localhost:8080/actuator/metrics
- Prometheus: http://localhost:8080/actuator/prometheus

### 3. Prometheus & Grafana 실행

monitoring 디렉토리에서 Docker Compose를 실행합니다:

```bash
cd monitoring
docker-compose up -d
```

### 4. 서비스 확인

- **Prometheus UI**: http://localhost:9090
  - Status → Targets에서 `persome-app` 상태가 UP인지 확인

- **Grafana UI**: http://localhost:3000
  - 초기 로그인 정보: admin / admin

## 📊 Grafana 대시보드 설정

### Data Source 추가

1. Grafana 접속 (http://localhost:3000)
2. 좌측 메뉴 → Connections → Data sources
3. "Add data source" 클릭
4. "Prometheus" 선택
5. 설정:
   - Name: `Prometheus`
   - URL: `http://prometheus:9090`
6. "Save & test" 클릭

### Spring Boot Dashboard 추가

#### 방법 1: 미리 만들어진 대시보드 Import

1. 좌측 메뉴 → Dashboards
2. "New" → "Import" 클릭
3. Import via grafana.com에 다음 ID 입력:
   - **4701** (JVM Micrometer Dashboard)
   - **11378** (Spring Boot Statistics)
4. Prometheus data source 선택
5. "Import" 클릭

#### 방법 2: 커스텀 대시보드 생성

1. 좌측 메뉴 → Dashboards → "New dashboard"
2. "Add visualization" 클릭
3. Data source: Prometheus 선택
4. 주요 메트릭 예시:

**HTTP 요청 수**
```promql
rate(http_server_requests_seconds_count{application="persome"}[1m])
```

**평균 응답 시간**
```promql
rate(http_server_requests_seconds_sum{application="persome"}[1m]) / rate(http_server_requests_seconds_count{application="persome"}[1m])
```

**JVM 메모리 사용량**
```promql
jvm_memory_used_bytes{application="persome"}
```

**CPU 사용률**
```promql
system_cpu_usage{application="persome"}
```

**에러율**
```promql
rate(http_server_requests_seconds_count{application="persome",status=~"5.."}[1m])
```

**데이터베이스 커넥션**
```promql
hikaricp_connections_active{application="persome"}
```

## 📈 주요 모니터링 메트릭

### 애플리케이션 성능
- **Throughput**: 초당 요청 수 (RPS)
- **Response Time**: API 응답 시간
- **Error Rate**: 에러 발생률

### 시스템 리소스
- **CPU Usage**: CPU 사용률
- **Memory Usage**: 메모리 사용량
- **Heap Memory**: JVM 힙 메모리
- **Thread Count**: 스레드 수

### 데이터베이스
- **Connection Pool**: HikariCP 커넥션 상태
- **Active Connections**: 활성 커넥션 수
- **Query Performance**: 쿼리 성능

### HTTP 메트릭
- **Request Count**: 엔드포인트별 요청 수
- **Status Codes**: HTTP 상태 코드 분포
- **URI Statistics**: URI별 통계

## 🛠️ 유용한 명령어

### Docker Compose 관리

```bash
# 시작
docker-compose up -d

# 중지
docker-compose down

# 로그 확인
docker-compose logs -f

# 특정 서비스 로그
docker-compose logs -f prometheus
docker-compose logs -f grafana

# 재시작
docker-compose restart
```

### 데이터 초기화

```bash
# 볼륨 포함 완전 삭제
docker-compose down -v

# 다시 시작
docker-compose up -d
```

## 🔧 트러블슈팅

### Prometheus에서 Targets가 DOWN 상태인 경우

1. Spring Boot 애플리케이션이 실행 중인지 확인
2. http://localhost:8080/actuator/prometheus 접속 가능한지 확인
3. macOS/Windows의 경우 `host.docker.internal` 사용 확인

### Grafana에서 데이터가 보이지 않는 경우

1. Data Source 연결 상태 확인
2. Prometheus에서 메트릭 수집 여부 확인
3. 쿼리 문법 확인

## 📝 알림 설정 (선택사항)

Grafana에서 알림을 설정하여 이상 징후를 모니터링할 수 있습니다:

1. Dashboard의 Panel 편집
2. Alert 탭에서 알림 규칙 설정
3. Notification channel 설정 (Slack, Email 등)

예시 알림 조건:
- 응답 시간 > 1초
- 에러율 > 5%
- CPU 사용률 > 80%
- 메모리 사용률 > 90%

## 🔗 참고 자료

- [Spring Boot Actuator 공식 문서](https://docs.spring.io/spring-boot/docs/current/reference/html/actuator.html)
- [Prometheus 공식 문서](https://prometheus.io/docs/)
- [Grafana 공식 문서](https://grafana.com/docs/)
- [Micrometer 문서](https://micrometer.io/docs)