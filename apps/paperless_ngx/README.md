<p align="center">
  <img src="icon.png" alt="Logo" width="75" height="75">
 
  <h1 align="center">Paperless-ngx</h1>

  <p align="center">
    A community-supported supercharged document management system: scan, index and archive all your documents
    <br />
    <a href="https://docs.paperless-ngx.com/"><strong>Explore the docs »</strong></a>
    <br />
    <br />
  </p>

</p>

<!-- https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#alerts -->
<p align="center">

  > [!NOTE]
  > 🟢 This application runs isolated from the internet  

</p>

## Architecture

This setup uses:
- **SQLite** as the database (no PostgreSQL needed)
- **Redis** as the message broker
- **Gotenberg** for Office document conversion (Word, Excel, PowerPoint)
- **Tika** for document content extraction

All containers run on the `no_internet` network with no external access.

## Create Superuser

```bash
docker exec -it paperless_ngx python3 manage.py createsuperuser
```

## Consume Documents

Place documents in the `consume` directory (`$APP_DATA_DIR/paperless_ngx/consume/`) and they will be automatically imported.

## Reference
- https://github.com/paperless-ngx/paperless-ngx
- https://docs.paperless-ngx.com/
- https://docs.paperless-ngx.com/configuration/
