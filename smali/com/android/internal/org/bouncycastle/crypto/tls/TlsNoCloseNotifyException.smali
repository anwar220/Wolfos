# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/tls/TlsNoCloseNotifyException;
.super Ljava/io/EOFException;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "No close_notify alert received before connection closed"

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    return-void
.end method
