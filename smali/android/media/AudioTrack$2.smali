# classes2.dex

.class Landroid/media/AudioTrack$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioTrack;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioTrack;

.field final synthetic val$delay:I


# direct methods
.method constructor <init>(Landroid/media/AudioTrack;I)V
    .registers 3

    iput-object p1, p0, Landroid/media/AudioTrack$2;->this$0:Landroid/media/AudioTrack;

    iput p2, p0, Landroid/media/AudioTrack$2;->val$delay:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    iget v0, p0, Landroid/media/AudioTrack$2;->val$delay:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_b

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_b
    iget-object v0, p0, Landroid/media/AudioTrack$2;->this$0:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->baseSetStartDelayMs(I)V

    :try_start_11
    iget-object v0, p0, Landroid/media/AudioTrack$2;->this$0:Landroid/media/AudioTrack;

    invoke-static {v0}, Landroid/media/AudioTrack;->-$$Nest$mstartImpl(Landroid/media/AudioTrack;)V
    :try_end_16
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_18

    :catch_17
    move-exception v0

    :goto_18
    return-void
.end method
