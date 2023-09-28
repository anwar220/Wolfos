# classes3.dex

.class Landroid/view/HandwritingInitiator$State;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HandwritingInitiator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field private mExceedTouchSlop:Z

.field private mShouldInitHandwriting:Z

.field private mStylusDownTimeInMillis:J

.field private mStylusDownX:F

.field private mStylusDownY:F

.field private mStylusPointerId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmExceedTouchSlop(Landroid/view/HandwritingInitiator$State;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/HandwritingInitiator$State;->mExceedTouchSlop:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/HandwritingInitiator$State;->mShouldInitHandwriting:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStylusDownTimeInMillis(Landroid/view/HandwritingInitiator$State;)J
    .registers 3

    iget-wide v0, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownTimeInMillis:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmStylusDownX(Landroid/view/HandwritingInitiator$State;)F
    .registers 1

    iget p0, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStylusDownY(Landroid/view/HandwritingInitiator$State;)F
    .registers 1

    iget p0, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStylusPointerId(Landroid/view/HandwritingInitiator$State;)I
    .registers 1

    iget p0, p0, Landroid/view/HandwritingInitiator$State;->mStylusPointerId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmExceedTouchSlop(Landroid/view/HandwritingInitiator$State;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/HandwritingInitiator$State;->mExceedTouchSlop:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/HandwritingInitiator$State;->mShouldInitHandwriting:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStylusDownTimeInMillis(Landroid/view/HandwritingInitiator$State;J)V
    .registers 3

    iput-wide p1, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownTimeInMillis:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStylusDownX(Landroid/view/HandwritingInitiator$State;F)V
    .registers 2

    iput p1, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStylusDownY(Landroid/view/HandwritingInitiator$State;F)V
    .registers 2

    iput p1, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStylusPointerId(Landroid/view/HandwritingInitiator$State;I)V
    .registers 2

    iput p1, p0, Landroid/view/HandwritingInitiator$State;->mStylusPointerId:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/HandwritingInitiator$State;->mShouldInitHandwriting:Z

    iput-boolean v0, p0, Landroid/view/HandwritingInitiator$State;->mExceedTouchSlop:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/HandwritingInitiator$State;->mStylusPointerId:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownTimeInMillis:J

    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownX:F

    iput v0, p0, Landroid/view/HandwritingInitiator$State;->mStylusDownY:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/HandwritingInitiator$State-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/HandwritingInitiator$State;-><init>()V

    return-void
.end method
