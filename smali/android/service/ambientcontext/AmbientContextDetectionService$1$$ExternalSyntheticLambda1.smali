# classes3.dex

.class public final synthetic Landroid/service/ambientcontext/AmbientContextDetectionService$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/os/RemoteCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/ambientcontext/AmbientContextDetectionService$1$$ExternalSyntheticLambda1;->f$0:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/service/ambientcontext/AmbientContextDetectionService$1$$ExternalSyntheticLambda1;->f$0:Landroid/os/RemoteCallback;

    check-cast p1, Landroid/service/ambientcontext/AmbientContextDetectionResult;

    invoke-static {v0, p1}, Landroid/service/ambientcontext/AmbientContextDetectionService$1;->lambda$startDetection$0(Landroid/os/RemoteCallback;Landroid/service/ambientcontext/AmbientContextDetectionResult;)V

    return-void
.end method
