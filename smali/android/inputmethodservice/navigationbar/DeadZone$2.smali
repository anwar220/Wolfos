# classes2.dex

.class Landroid/inputmethodservice/navigationbar/DeadZone$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/navigationbar/DeadZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/navigationbar/DeadZone;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/navigationbar/DeadZone;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/DeadZone$2;->this$0:Landroid/inputmethodservice/navigationbar/DeadZone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/DeadZone$2;->this$0:Landroid/inputmethodservice/navigationbar/DeadZone;

    invoke-static {}, Landroid/inputmethodservice/navigationbar/DeadZone;->-$$Nest$sfgetFLASH_PROPERTY()Landroid/util/FloatProperty;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_1a

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_1a
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method
