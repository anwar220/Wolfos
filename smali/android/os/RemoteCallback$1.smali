# classes3.dex

.class Landroid/os/RemoteCallback$1;
.super Landroid/os/IRemoteCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/RemoteCallback;


# direct methods
.method constructor <init>(Landroid/os/RemoteCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/os/RemoteCallback$1;->this$0:Landroid/os/RemoteCallback;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Landroid/os/RemoteCallback$1;->this$0:Landroid/os/RemoteCallback;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method