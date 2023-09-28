# classes2.dex

.class public final Landroid/hardware/input/VirtualTouchEvent;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/VirtualTouchEvent$Builder;,
        Landroid/hardware/input/VirtualTouchEvent$Action;,
        Landroid/hardware/input/VirtualTouchEvent$ToolType;
    }
.end annotation


# static fields
.field public static final ACTION_CANCEL:I = 0x3

.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_MOVE:I = 0x2

.field public static final ACTION_UNKNOWN:I = -0x1

.field public static final ACTION_UP:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/VirtualTouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOOL_TYPE_FINGER:I = 0x1

.field public static final TOOL_TYPE_PALM:I = 0x5

.field public static final TOOL_TYPE_UNKNOWN:I


# instance fields
.field private final mAction:I

.field private final mMajorAxisSize:F

.field private final mPointerId:I

.field private final mPressure:F

.field private final mToolType:I

.field private final mX:F

.field private final mY:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/input/VirtualTouchEvent$1;

    invoke-direct {v0}, Landroid/hardware/input/VirtualTouchEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/input/VirtualTouchEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIIFFFF)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/input/VirtualTouchEvent;->mPointerId:I

    iput p2, p0, Landroid/hardware/input/VirtualTouchEvent;->mToolType:I

    iput p3, p0, Landroid/hardware/input/VirtualTouchEvent;->mAction:I

    iput p4, p0, Landroid/hardware/input/VirtualTouchEvent;->mX:F

    iput p5, p0, Landroid/hardware/input/VirtualTouchEvent;->mY:F

    iput p6, p0, Landroid/hardware/input/VirtualTouchEvent;->mPressure:F

    iput p7, p0, Landroid/hardware/input/VirtualTouchEvent;->mMajorAxisSize:F

    return-void
.end method

.method synthetic constructor <init>(IIIFFFFLandroid/hardware/input/VirtualTouchEvent-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/hardware/input/VirtualTouchEvent;-><init>(IIIFFFF)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mPointerId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mToolType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mAction:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mX:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mY:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mPressure:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mMajorAxisSize:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/input/VirtualTouchEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/VirtualTouchEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAction()I
    .registers 2

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mAction:I

    return v0
.end method

.method public getMajorAxisSize()F
    .registers 2

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mMajorAxisSize:F

    return v0
.end method

.method public getPointerId()I
    .registers 2

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mPointerId:I

    return v0
.end method

.method public getPressure()F
    .registers 2

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mPressure:F

    return v0
.end method

.method public getToolType()I
    .registers 2

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mToolType:I

    return v0
.end method

.method public getX()F
    .registers 2

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mX:F

    return v0
.end method

.method public getY()F
    .registers 2

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mY:F

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mPointerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mToolType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mPressure:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/hardware/input/VirtualTouchEvent;->mMajorAxisSize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
