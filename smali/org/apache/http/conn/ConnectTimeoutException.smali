# classes4.dex

.class public Lorg/apache/http/conn/ConnectTimeoutException;
.super Ljava/io/InterruptedIOException;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x42d84b949dece2f5L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    return-void
.end method