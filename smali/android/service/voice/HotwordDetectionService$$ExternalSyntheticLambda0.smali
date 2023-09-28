# classes3.dex

.class public final synthetic Landroid/service/voice/HotwordDetectionService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Landroid/os/IRemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IRemoteCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/voice/HotwordDetectionService$$ExternalSyntheticLambda0;->f$0:Landroid/os/IRemoteCallback;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .registers 3

    iget-object v0, p0, Landroid/service/voice/HotwordDetectionService$$ExternalSyntheticLambda0;->f$0:Landroid/os/IRemoteCallback;

    invoke-static {v0, p1}, Landroid/service/voice/HotwordDetectionService;->lambda$onUpdateStateInternal$0(Landroid/os/IRemoteCallback;I)V

    return-void
.end method
