# classes3.dex

.class Landroid/se/omapi/SEService$SEListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/se/omapi/SEService$SEListener;->onConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/se/omapi/SEService$SEListener;


# direct methods
.method constructor <init>(Landroid/se/omapi/SEService$SEListener;)V
    .registers 2

    iput-object p1, p0, Landroid/se/omapi/SEService$SEListener$1;->this$1:Landroid/se/omapi/SEService$SEListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroid/se/omapi/SEService$SEListener$1;->this$1:Landroid/se/omapi/SEService$SEListener;

    iget-object v0, v0, Landroid/se/omapi/SEService$SEListener;->mListener:Landroid/se/omapi/SEService$OnConnectedListener;

    invoke-interface {v0}, Landroid/se/omapi/SEService$OnConnectedListener;->onConnected()V

    return-void
.end method
