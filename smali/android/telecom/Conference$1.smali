# classes3.dex

.class Landroid/telecom/Conference$1;
.super Landroid/telecom/Connection$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Conference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/Conference;


# direct methods
.method constructor <init>(Landroid/telecom/Conference;)V
    .registers 2

    iput-object p1, p0, Landroid/telecom/Conference$1;->this$0:Landroid/telecom/Conference;

    invoke-direct {p0}, Landroid/telecom/Connection$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed(Landroid/telecom/Connection;)V
    .registers 3

    iget-object v0, p0, Landroid/telecom/Conference$1;->this$0:Landroid/telecom/Conference;

    invoke-static {v0}, Landroid/telecom/Conference;->-$$Nest$fgetmConferenceableConnections(Landroid/telecom/Conference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/telecom/Conference$1;->this$0:Landroid/telecom/Conference;

    invoke-static {v0}, Landroid/telecom/Conference;->-$$Nest$mfireOnConferenceableConnectionsChanged(Landroid/telecom/Conference;)V

    :cond_11
    return-void
.end method
