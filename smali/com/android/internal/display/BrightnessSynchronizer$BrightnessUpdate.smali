# classes4.dex

.class public Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/display/BrightnessSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrightnessUpdate"
.end annotation


# static fields
.field private static final STATE_COMPLETED:I = 0x3

.field private static final STATE_NOT_STARTED:I = 0x1

.field private static final STATE_RUNNING:I = 0x2

.field static final TYPE_FLOAT:I = 0x2

.field static final TYPE_INT:I = 0x1


# instance fields
.field private final mBrightness:F

.field private mConfirmedTypes:I

.field private mId:I

.field private final mSourceType:I

.field private mState:I

.field private mTimeUpdated:J

.field private mUpdatedTypes:I

.field final synthetic this$0:Lcom/android/internal/display/BrightnessSynchronizer;


# direct methods
.method constructor <init>(Lcom/android/internal/display/BrightnessSynchronizer;IF)V
    .registers 6

    iput-object p1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$sfgetsBrightnessUpdateCount()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$sfputsBrightnessUpdateCount(I)V

    iput v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mId:I

    iput p2, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mSourceType:I

    iput p3, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mBrightness:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mTimeUpdated:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mUpdatedTypes:I

    iput v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mConfirmedTypes:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mState:I

    return-void
.end method

.method private getBrightnessAsFloat()F
    .registers 3

    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mSourceType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mBrightness:F

    return v0

    :cond_8
    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mBrightness:F

    float-to-int v0, v0

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloatForLowLevel(I)F

    move-result v0

    return v0
.end method

.method private getBrightnessAsInt()I
    .registers 3

    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mSourceType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mBrightness:F

    float-to-int v0, v0

    return v0

    :cond_9
    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mBrightness:F

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToIntRangeForLowLevel(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private toStringLabel(IF)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(i)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    :cond_18
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(f)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_31

    :cond_2f
    const-string v0, ""

    :goto_31
    return-object v0
.end method


# virtual methods
.method isCompleted()Z
    .registers 3

    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method isRunning()Z
    .registers 3

    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method madeUpdates()Z
    .registers 2

    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mUpdatedTypes:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method swallowUpdate(IF)Z
    .registers 8

    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mUpdatedTypes:I

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-ne v0, p1, :cond_5b

    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mConfirmedTypes:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_c

    goto :goto_5b

    :cond_c
    const/4 v0, 0x2

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1c

    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->getBrightnessAsFloat()F

    move-result v0

    invoke-static {v0, p2}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v2

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    if-ne p1, v2, :cond_28

    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->getBrightnessAsInt()I

    move-result v3

    float-to-int v4, p2

    if-ne v3, v4, :cond_28

    move v3, v2

    goto :goto_29

    :cond_28
    move v3, v1

    :goto_29
    if-nez v0, :cond_2f

    if-eqz v3, :cond_2e

    goto :goto_2f

    :cond_2e
    return v1

    :cond_2f
    :goto_2f
    iget v1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mConfirmedTypes:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mConfirmedTypes:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Swallowing update of "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->toStringLabel(IF)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " by update: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "BrightnessSynchronizer"

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5b
    :goto_5b
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mSourceType:I

    iget v2, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mBrightness:F

    invoke-direct {p0, v1, v2}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->toStringLabel(IF)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUpdatedTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mUpdatedTypes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfirmedTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mConfirmedTypes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimeUpdated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mTimeUpdated:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method update()V
    .registers 10

    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mState:I

    const-wide/16 v1, 0xc8

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_c8

    iput v3, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mState:I

    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->getBrightnessAsInt()I

    move-result v0

    iget-object v5, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fgetmLatestIntBrightness(Lcom/android/internal/display/BrightnessSynchronizer;)I

    move-result v5

    if-eq v5, v0, :cond_31

    iget-object v5, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fgetmContext(Lcom/android/internal/display/BrightnessSynchronizer;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, -0x2

    const-string/jumbo v7, "screen_brightness"

    invoke-static {v5, v7, v0, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v5, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v5, v0}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fputmLatestIntBrightness(Lcom/android/internal/display/BrightnessSynchronizer;I)V

    iget v5, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mUpdatedTypes:I

    or-int/2addr v5, v4

    iput v5, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mUpdatedTypes:I

    :cond_31
    invoke-direct {p0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->getBrightnessAsFloat()F

    move-result v5

    iget-object v6, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v6}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fgetmLatestFloatBrightness(Lcom/android/internal/display/BrightnessSynchronizer;)F

    move-result v6

    invoke-static {v6, v5}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v6

    if-nez v6, :cond_55

    iget-object v6, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v6}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fgetmDisplayManager(Lcom/android/internal/display/BrightnessSynchronizer;)Landroid/hardware/display/DisplayManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v5}, Landroid/hardware/display/DisplayManager;->setBrightness(IF)V

    iget-object v6, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v6, v5}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fputmLatestFloatBrightness(Lcom/android/internal/display/BrightnessSynchronizer;F)V

    iget v6, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mUpdatedTypes:I

    or-int/2addr v6, v3

    iput v6, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mUpdatedTypes:I

    :cond_55
    iget v6, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mUpdatedTypes:I

    if-eqz v6, :cond_bc

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] New Update "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mSourceType:I

    iget v8, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mBrightness:F

    invoke-direct {p0, v7, v8}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->toStringLabel(IF)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " set brightness values: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mUpdatedTypes:I

    and-int/2addr v7, v3

    invoke-direct {p0, v7, v5}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->toStringLabel(IF)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mUpdatedTypes:I

    and-int/2addr v7, v4

    int-to-float v8, v0

    invoke-direct {p0, v7, v8}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->toStringLabel(IF)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BrightnessSynchronizer"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v6}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fgetmHandler(Lcom/android/internal/display/BrightnessSynchronizer;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v7}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fgetmClock(Lcom/android/internal/display/BrightnessSynchronizer;)Lcom/android/internal/display/BrightnessSynchronizer$Clock;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/display/BrightnessSynchronizer$Clock;->uptimeMillis()J

    move-result-wide v7

    add-long/2addr v7, v1

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_bc
    iget-object v4, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v4}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fgetmClock(Lcom/android/internal/display/BrightnessSynchronizer;)Lcom/android/internal/display/BrightnessSynchronizer$Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/display/BrightnessSynchronizer$Clock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mTimeUpdated:J

    :cond_c8
    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mState:I

    if-ne v0, v3, :cond_e6

    iget v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mConfirmedTypes:I

    iget v3, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mUpdatedTypes:I

    if-eq v0, v3, :cond_e3

    iget-wide v3, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mTimeUpdated:J

    add-long/2addr v3, v1

    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fgetmClock(Lcom/android/internal/display/BrightnessSynchronizer;)Lcom/android/internal/display/BrightnessSynchronizer$Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/display/BrightnessSynchronizer$Clock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-gez v0, :cond_e6

    :cond_e3
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessUpdate;->mState:I

    :cond_e6
    return-void
.end method
