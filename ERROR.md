# Error 403 Not Authorized (whizlabs.com)

## **2. Networking Layer (VPC Design)**

- Cloud NAT (for outbound internet access from private instances)

## **4. Load Balancing**

- Configure an HTTP(S) Load Balancer
- Distribute traffic across instances
- Enable health checks

Output

```text
│ Error: Error creating Address: googleapi: Error 403: Required 'compute.addresses.create' permission for 'projects/student-00571/regions/us-central1/addresses/web-lb-ip', forbidden
│
│ with google_compute_address.web_lb_ip,
│ on lb.tf line 6, in resource "google_compute_address" "web_lb_ip":
│ 6: resource "google_compute_address" "web_lb_ip" {
│
╵
╷
│ Error: Error creating HttpHealthCheck: googleapi: Error 403: Required 'compute.httpHealthChecks.create' permission for 'projects/student-00571/global/httpHealthChecks/web-http-hc', forbidden
│
│ with google_compute_http_health_check.web_hc,
│ on lb.tf line 12, in resource "google_compute_http_health_check" "web_hc":
│ 12: resource "google_compute_http_health_check" "web_hc" {
│
╵
╷
│ Error: Error creating Network: googleapi: Error 403: Required 'compute.networks.create' permission for 'projects/student-00571/global/networks/custom-vpc', forbidden
│
│ with google_compute_network.vpc,
│ on main.tf line 4, in resource "google_compute_network" "vpc":
│ 4: resource "google_compute_network" "vpc" {
```

## **5. Data Layer**

- Deploy a managed database using Cloud SQL (MySQL / PostgreSQL)
- Disable public access
- Allow access only from internal network
