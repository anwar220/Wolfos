# classes2.dex

.class public final synthetic Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/CallbackUtil$CallbackMethod;


# instance fields
.field public final synthetic f$0:Landroid/media/AudioDeviceAttributes;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioDeviceAttributes;[I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub$$ExternalSyntheticLambda1;->f$0:Landroid/media/AudioDeviceAttributes;

    iput-object p2, p0, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub$$ExternalSyntheticLambda1;->f$1:[I

    return-void
.end method


# virtual methods
.method public final callbackMethod(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub$$ExternalSyntheticLambda1;->f$0:Landroid/media/AudioDeviceAttributes;

    iget-object v1, p0, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub$$ExternalSyntheticLambda1;->f$1:[I

    check-cast p1, Landroid/media/AudioManager$MuteAwaitConnectionCallback;

    invoke-static {v0, v1, p1}, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;->lambda$dispatchOnMutedUntilConnection$0(Landroid/media/AudioDeviceAttributes;[ILandroid/media/AudioManager$MuteAwaitConnectionCallback;)V

    return-void
.end method
