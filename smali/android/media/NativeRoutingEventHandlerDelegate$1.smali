# classes2.dex

.class Landroid/media/NativeRoutingEventHandlerDelegate$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/NativeRoutingEventHandlerDelegate;->notifyClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/NativeRoutingEventHandlerDelegate;


# direct methods
.method constructor <init>(Landroid/media/NativeRoutingEventHandlerDelegate;)V
    .registers 2

    iput-object p1, p0, Landroid/media/NativeRoutingEventHandlerDelegate$1;->this$0:Landroid/media/NativeRoutingEventHandlerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/media/NativeRoutingEventHandlerDelegate$1;->this$0:Landroid/media/NativeRoutingEventHandlerDelegate;

    invoke-static {v0}, Landroid/media/NativeRoutingEventHandlerDelegate;->-$$Nest$fgetmOnRoutingChangedListener(Landroid/media/NativeRoutingEventHandlerDelegate;)Landroid/media/AudioRouting$OnRoutingChangedListener;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/media/NativeRoutingEventHandlerDelegate$1;->this$0:Landroid/media/NativeRoutingEventHandlerDelegate;

    invoke-static {v0}, Landroid/media/NativeRoutingEventHandlerDelegate;->-$$Nest$fgetmOnRoutingChangedListener(Landroid/media/NativeRoutingEventHandlerDelegate;)Landroid/media/AudioRouting$OnRoutingChangedListener;

    move-result-object v0

    iget-object v1, p0, Landroid/media/NativeRoutingEventHandlerDelegate$1;->this$0:Landroid/media/NativeRoutingEventHandlerDelegate;

    invoke-static {v1}, Landroid/media/NativeRoutingEventHandlerDelegate;->-$$Nest$fgetmAudioRouting(Landroid/media/NativeRoutingEventHandlerDelegate;)Landroid/media/AudioRouting;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/AudioRouting$OnRoutingChangedListener;->onRoutingChanged(Landroid/media/AudioRouting;)V

    :cond_17
    return-void
.end method
