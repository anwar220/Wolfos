# classes2.dex

.class public final Landroid/media/Rating;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Rating$StarStyle;,
        Landroid/media/Rating$Style;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/Rating;",
            ">;"
        }
    .end annotation
.end field

.field public static final RATING_3_STARS:I = 0x3

.field public static final RATING_4_STARS:I = 0x4

.field public static final RATING_5_STARS:I = 0x5

.field public static final RATING_HEART:I = 0x1

.field public static final RATING_NONE:I = 0x0

.field private static final RATING_NOT_RATED:F = -1.0f

.field public static final RATING_PERCENTAGE:I = 0x6

.field public static final RATING_THUMB_UP_DOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Rating"


# instance fields
.field private final mRatingStyle:I

.field private final mRatingValue:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/Rating$1;

    invoke-direct {v0}, Landroid/media/Rating$1;-><init>()V

    sput-object v0, Landroid/media/Rating;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IF)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/Rating;->mRatingStyle:I

    iput p2, p0, Landroid/media/Rating;->mRatingValue:F

    return-void
.end method

.method synthetic constructor <init>(IFLandroid/media/Rating-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/Rating;-><init>(IF)V

    return-void
.end method

.method public static newHeartRating(Z)Landroid/media/Rating;
    .registers 4

    new-instance v0, Landroid/media/Rating;

    if-eqz p0, :cond_7

    const/high16 v1, 0x3f800000  # 1.0f

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/media/Rating;-><init>(IF)V

    return-object v0
.end method

.method public static newPercentageRating(F)Landroid/media/Rating;
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_12

    const/high16 v0, 0x42c80000  # 100.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_12

    new-instance v0, Landroid/media/Rating;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/media/Rating;-><init>(IF)V

    return-object v0

    :cond_12
    const-string v0, "Rating"

    const-string v1, "Invalid percentage-based rating value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static newStarRating(IF)Landroid/media/Rating;
    .registers 7

    const/high16 v0, -0x40800000  # -1.0f

    const/4 v1, 0x0

    const-string v2, "Rating"

    packed-switch p0, :pswitch_data_44

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid rating style ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") for a star rating"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :pswitch_25  #0x5
    const/high16 v0, 0x40a00000  # 5.0f

    goto :goto_2e

    :pswitch_28  #0x4
    const/high16 v0, 0x40800000  # 4.0f

    goto :goto_2e

    :pswitch_2b  #0x3
    const/high16 v0, 0x40400000  # 3.0f

    nop

    :goto_2e
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_3d

    cmpg-float v3, p1, v0

    if-gtz v3, :cond_3d

    new-instance v1, Landroid/media/Rating;

    invoke-direct {v1, p0, p1}, Landroid/media/Rating;-><init>(IF)V

    return-object v1

    :cond_3d
    const-string v3, "Trying to set out of range star-based rating"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    nop

    :pswitch_data_44
    .packed-switch 0x3
        :pswitch_2b  #00000003
        :pswitch_28  #00000004
        :pswitch_25  #00000005
    .end packed-switch
.end method

.method public static newThumbRating(Z)Landroid/media/Rating;
    .registers 4

    new-instance v0, Landroid/media/Rating;

    if-eqz p0, :cond_7

    const/high16 v1, 0x3f800000  # 1.0f

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/media/Rating;-><init>(IF)V

    return-object v0
.end method

.method public static newUnratedRating(I)Landroid/media/Rating;
    .registers 3

    packed-switch p0, :pswitch_data_e

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6
    new-instance v0, Landroid/media/Rating;

    const/high16 v1, -0x40800000  # -1.0f

    invoke-direct {v0, p0, v1}, Landroid/media/Rating;-><init>(IF)V

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5  #00000001
        :pswitch_5  #00000002
        :pswitch_5  #00000003
        :pswitch_5  #00000004
        :pswitch_5  #00000005
        :pswitch_5  #00000006
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    return v0
.end method

.method public getPercentRating()F
    .registers 3

    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, Landroid/media/Rating;->isRated()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_f

    :cond_c
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    return v0

    :cond_f
    :goto_f
    const/high16 v0, -0x40800000  # -1.0f

    return v0
.end method

.method public getRatingStyle()I
    .registers 2

    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    return v0
.end method

.method public getStarRating()F
    .registers 3

    const/high16 v0, -0x40800000  # -1.0f

    iget v1, p0, Landroid/media/Rating;->mRatingStyle:I

    packed-switch v1, :pswitch_data_12

    goto :goto_10

    :pswitch_8  #0x3, 0x4, 0x5
    invoke-virtual {p0}, Landroid/media/Rating;->isRated()Z

    move-result v1

    if-eqz v1, :cond_10

    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    :cond_10
    :goto_10
    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x3
        :pswitch_8  #00000003
        :pswitch_8  #00000004
        :pswitch_8  #00000005
    .end packed-switch
.end method

.method public hasHeart()Z
    .registers 5

    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    return v1

    :cond_7
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    const/high16 v3, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_10

    move v1, v2

    :cond_10
    return v1
.end method

.method public isRated()Z
    .registers 3

    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public isThumbUp()Z
    .registers 4

    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    return v1

    :cond_7
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rating:style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/Rating;->mRatingStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/Rating;->mRatingValue:F

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_21

    const-string v1, "unrated"

    goto :goto_25

    :cond_21
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    :goto_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
