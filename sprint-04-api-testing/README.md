# Sprint 04 – API Testing (Manual)

## Project
API testing of new backend features for the Urban.Grocers application.

## Tested Features
- Kit management: adding products to kits
  - Endpoint: POST /api/v1/kits/{id}/products
  - Validation of product list size limit (max 30 items)
- Delivery service "Order and Go"
  - Endpoint: POST /order-and-go/v1/delivery
  - Delivery availability validation
  - Delivery price calculation

## Test Design
- API test checklist based on backend requirements
- Positive and negative test scenarios
- Validation of response status codes and error handling
- Boundary value testing (product list size)

## Test Execution
- API requests executed using Postman
- Authorization testing was excluded as per requirements

## Bug Reporting
- Bugs were reported in Jira when applicable
- Each failed scenario was documented with expected vs actual results

## Deliverables
- API test checklist (Excel)
- Bug reports references (Jira)

## Tools
- Postman
- Jira
- API documentation (ApiDoc)
---
