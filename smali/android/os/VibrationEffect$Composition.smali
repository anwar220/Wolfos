# classes3.dex

.class public final Landroid/os/VibrationEffect$Composition;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Composition"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/VibrationEffect$Composition$UnreachableAfterRepeatingIndefinitelyException;,
        Landroid/os/VibrationEffect$Composition$PrimitiveType;
    }
.end annotation


# static fields
.field public static final PRIMITIVE_CLICK:I = 0x1

.field public static final PRIMITIVE_LOW_TICK:I = 0x8

.field public static final PRIMITIVE_NOOP:I = 0x0

.field public static final PRIMITIVE_QUICK_FALL:I = 0x6

.field public static final PRIMITIVE_QUICK_RISE:I = 0x4

.field public static final PRIMITIVE_SLOW_RISE:I = 0x5

.field public static final PRIMITIVE_SPIN:I = 0x3

.field public static final PRIMITIVE_THUD:I = 0x2

.field public static final PRIMITIVE_TICK:I = 0x7


# instance fields
.field private mRepeatIndex:I

.field private final mSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/vibrator/VibrationEffectSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/VibrationEffect$Composition;->mSegments:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/VibrationEffect$Composition;->mRepeatIndex:I

    return-void
.end method

.method private addSegment(Landroid/os/vibrator/VibrationEffectSegment;)Landroid/os/VibrationEffect$Composition;
    .registers 3

    iget v0, p0, Landroid/os/VibrationEffect$Composition;->mRepeatIndex:I

    if-gez v0, :cond_a

    iget-object v0, p0, Landroid/os/VibrationEffect$Composition;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_a
    new-instance v0, Landroid/os/VibrationEffect$Composition$UnreachableAfterRepeatingIndefinitelyException;

    invoke-direct {v0}, Landroid/os/VibrationEffect$Composition$UnreachableAfterRepeatingIndefinitelyException;-><init>()V

    throw v0
.end method

.method private addSegments(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;
    .registers 5

    iget v0, p0, Landroid/os/VibrationEffect$Composition;->mRepeatIndex:I

    if-gez v0, :cond_24

    move-object v0, p1

    check-cast v0, Landroid/os/VibrationEffect$Composed;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v1

    if-ltz v1, :cond_1a

    iget-object v1, p0, Landroid/os/VibrationEffect$Composition;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/os/VibrationEffect$Composition;->mRepeatIndex:I

    :cond_1a
    iget-object v1, p0, Landroid/os/VibrationEffect$Composition;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0

    :cond_24
    new-instance v0, Landroid/os/VibrationEffect$Composition$UnreachableAfterRepeatingIndefinitelyException;

    invoke-direct {v0}, Landroid/os/VibrationEffect$Composition$UnreachableAfterRepeatingIndefinitelyException;-><init>()V

    throw v0
.end method

.method public static primitiveToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_24

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0x8
    const-string v0, "PRIMITIVE_LOW_TICK"

    return-object v0

    :pswitch_b  #0x7
    const-string v0, "PRIMITIVE_TICK"

    return-object v0

    :pswitch_e  #0x6
    const-string v0, "PRIMITIVE_QUICK_FALL"

    return-object v0

    :pswitch_11  #0x5
    const-string v0, "PRIMITIVE_SLOW_RISE"

    return-object v0

    :pswitch_14  #0x4
    const-string v0, "PRIMITIVE_QUICK_RISE"

    return-object v0

    :pswitch_17  #0x3
    const-string v0, "PRIMITIVE_SPIN"

    return-object v0

    :pswitch_1a  #0x2
    const-string v0, "PRIMITIVE_THUD"

    return-object v0

    :pswitch_1d  #0x1
    const-string v0, "PRIMITIVE_CLICK"

    return-object v0

    :pswitch_20  #0x0
    const-string v0, "PRIMITIVE_NOOP"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20  #00000000
        :pswitch_1d  #00000001
        :pswitch_1a  #00000002
        :pswitch_17  #00000003
        :pswitch_14  #00000004
        :pswitch_11  #00000005
        :pswitch_e  #00000006
        :pswitch_b  #00000007
        :pswitch_8  #00000008
    .end packed-switch
.end method


# virtual methods
.method public addEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/VibrationEffect$Composition;->addSegments(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    return-object v0
.end method

.method public addOffDuration(Ljava/time/Duration;)Landroid/os/VibrationEffect$Composition;
    .registers 6

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    long-to-int v0, v0

    const-string v1, "Off period must be non-negative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    if-lez v0, :cond_1a

    new-instance v1, Landroid/os/vibrator/StepSegment;

    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    invoke-direct {p0, v1}, Landroid/os/VibrationEffect$Composition;->addSegment(Landroid/os/vibrator/VibrationEffectSegment;)Landroid/os/VibrationEffect$Composition;

    :cond_1a
    return-object p0
.end method

.method public addPrimitive(I)Landroid/os/VibrationEffect$Composition;
    .registers 4

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    return-object v0
.end method

.method public addPrimitive(IF)Landroid/os/VibrationEffect$Composition;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    return-object v0
.end method

.method public addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;
    .registers 6

    new-instance v0, Landroid/os/vibrator/PrimitiveSegment;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/vibrator/PrimitiveSegment;-><init>(IFI)V

    invoke-virtual {v0}, Landroid/os/vibrator/PrimitiveSegment;->validate()V

    invoke-direct {p0, v0}, Landroid/os/VibrationEffect$Composition;->addSegment(Landroid/os/vibrator/VibrationEffectSegment;)Landroid/os/VibrationEffect$Composition;

    move-result-object v1

    return-object v1
.end method

.method public compose()Landroid/os/VibrationEffect;
    .registers 4

    iget-object v0, p0, Landroid/os/VibrationEffect$Composition;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Landroid/os/VibrationEffect$Composed;

    iget-object v1, p0, Landroid/os/VibrationEffect$Composition;->mSegments:Ljava/util/ArrayList;

    iget v2, p0, Landroid/os/VibrationEffect$Composition;->mRepeatIndex:I

    invoke-direct {v0, v1, v2}, Landroid/os/VibrationEffect$Composed;-><init>(Ljava/util/List;I)V

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->validate()V

    return-object v0

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Composition must have at least one element to compose."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public repeatEffectIndefinitely(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;
    .registers 6

    invoke-virtual {p1}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    const-string v1, "Can\'t repeat an indefinitely repeating effect. Consider addEffect instead."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Landroid/os/VibrationEffect$Composition;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1}, Landroid/os/VibrationEffect$Composition;->addSegments(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect$Composition;

    iput v0, p0, Landroid/os/VibrationEffect$Composition;->mRepeatIndex:I

    return-object p0
.end method
