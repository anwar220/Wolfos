# classes3.dex

.class public final synthetic Landroid/service/contentcapture/ContentCaptureService$1$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/service/contentcapture/ContentCaptureService;

    invoke-static {p1}, Landroid/service/contentcapture/ContentCaptureService$1;->lambda$onDisconnected$1(Ljava/lang/Object;)V

    return-void
.end method