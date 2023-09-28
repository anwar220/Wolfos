# classes3.dex

.class public final Landroid/view/RoundedCorner;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/RoundedCorner$Position;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/RoundedCorner;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSITION_BOTTOM_LEFT:I = 0x3

.field public static final POSITION_BOTTOM_RIGHT:I = 0x2

.field public static final POSITION_TOP_LEFT:I = 0x0

.field public static final POSITION_TOP_RIGHT:I = 0x1


# instance fields
.field private final mCenter:Landroid/graphics/Point;

.field private final mPosition:I

.field private final mRadius:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/RoundedCorner$1;

    invoke-direct {v0}, Landroid/view/RoundedCorner$1;-><init>()V

    sput-object v0, Landroid/view/RoundedCorner;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/RoundedCorner;->mPosition:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/RoundedCorner;->mRadius:I

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Landroid/view/RoundedCorner;->mCenter:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/RoundedCorner;->mPosition:I

    iput p2, p0, Landroid/view/RoundedCorner;->mRadius:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Landroid/view/RoundedCorner;->mCenter:Landroid/graphics/Point;

    return-void
.end method

.method constructor <init>(Landroid/view/RoundedCorner;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/RoundedCorner;->getPosition()I

    move-result v0

    iput v0, p0, Landroid/view/RoundedCorner;->mPosition:I

    invoke-virtual {p1}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v0

    iput v0, p0, Landroid/view/RoundedCorner;->mRadius:I

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/RoundedCorner;->getCenter()Landroid/graphics/Point;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Landroid/view/RoundedCorner;->mCenter:Landroid/graphics/Point;

    return-void
.end method

.method private getPositionString(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_12

    const-string v0, "Invalid"

    return-object v0

    :pswitch_6  #0x3
    const-string v0, "BottomLeft"

    return-object v0

    :pswitch_9  #0x2
    const-string v0, "BottomRight"

    return-object v0

    :pswitch_c  #0x1
    const-string v0, "TopRight"

    return-object v0

    :pswitch_f  #0x0
    const-string v0, "TopLeft"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f  #00000000
        :pswitch_c  #00000001
        :pswitch_9  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/view/RoundedCorner;

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    move-object v1, p1

    check-cast v1, Landroid/view/RoundedCorner;

    iget v3, p0, Landroid/view/RoundedCorner;->mPosition:I

    iget v4, v1, Landroid/view/RoundedCorner;->mPosition:I

    if-ne v3, v4, :cond_23

    iget v3, p0, Landroid/view/RoundedCorner;->mRadius:I

    iget v4, v1, Landroid/view/RoundedCorner;->mRadius:I

    if-ne v3, v4, :cond_23

    iget-object v3, p0, Landroid/view/RoundedCorner;->mCenter:Landroid/graphics/Point;

    iget-object v4, v1, Landroid/view/RoundedCorner;->mCenter:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_24

    :cond_23
    move v0, v2

    :goto_24
    return v0

    :cond_25
    return v2
.end method

.method public getCenter()Landroid/graphics/Point;
    .registers 3

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Landroid/view/RoundedCorner;->mCenter:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    iget v0, p0, Landroid/view/RoundedCorner;->mPosition:I

    return v0
.end method

.method public getRadius()I
    .registers 2

    iget v0, p0, Landroid/view/RoundedCorner;->mRadius:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/view/RoundedCorner;->mPosition:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/view/RoundedCorner;->mRadius:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/RoundedCorner;->mCenter:Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/graphics/Point;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Landroid/view/RoundedCorner;->mRadius:I

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/view/RoundedCorner;->mCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_13

    iget-object v0, p0, Landroid/view/RoundedCorner;->mCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gtz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RoundedCorner{position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/RoundedCorner;->mPosition:I

    invoke-direct {p0, v1}, Landroid/view/RoundedCorner;->getPositionString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/RoundedCorner;->mRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", center="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/RoundedCorner;->mCenter:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/view/RoundedCorner;->mPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/RoundedCorner;->mRadius:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/RoundedCorner;->mCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/RoundedCorner;->mCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
