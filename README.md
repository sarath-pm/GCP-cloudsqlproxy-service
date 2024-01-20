# Cloud SQL Auth Proxy as a Service Setup Script

In the realm of cloud computing, establishing secure and reliable connections to databases is crucial for application performance and data integrity. Google Cloud SQL Auth Proxy simplifies this process by allowing secure connections to Google Cloud SQL instances without the need for external IP addresses. If you are new to CloudSQL Auth Proxy kindly refer this [official Google Document](https://cloud.google.com/sql/docs/mysql/sql-proxy).

This shell script automates the setup of Google Cloud SQL Auth Proxy on an Ubuntu system. 

## Prerequisites

- Ubuntu instance
- GCP CloudSQL INSTANCE_CONNECTION_NAME

## Usage

1. Clone the repository:

   ```bash
   git clone https://github.com/sarath-pm/GCP-cloudsqlproxy-service.git
   ```
   
2. Navigate to the script directory:

   ```bash
   cd GCP-cloudsqlproxy-service
   ```

3. Run the Script

   ```bash
   chmod +x cloudsqlproxy.sh
   ./cloudsqlproxy.sh INSTANCE_CONNECTION_NAME PORT
   ```
   Example: `./cloudsqlproxy.sh projectid:region:sqlinstance 3306`

   
