# classes3.dex

.class public Landroid/text/style/StyleSpan;
.super Landroid/text/style/MetricAffectingSpan;

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mFontWeightAdjustment:I

.field private final mStyle:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Landroid/text/style/StyleSpan;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput p1, p0, Landroid/text/style/StyleSpan;->mStyle:I

    iput p2, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    return-void
.end method

.method private static apply(Landroid/graphics/Paint;II)V
    .registers 10

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    :goto_c
    or-int v2, v1, p1

    if-nez v0, :cond_15

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    goto :goto_19

    :cond_15
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    :goto_19
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-eqz v4, :cond_40

    if-eqz p2, :cond_40

    const v4, 0x7fffffff

    if-eq p2, v4, :cond_40

    nop

    invoke-virtual {v3}, Landroid/graphics/Typeface;->getWeight()I

    move-result v4

    add-int/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/16 v6, 0x3e8

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_3b

    move v6, v5

    goto :goto_3c

    :cond_3b
    const/4 v6, 0x0

    :goto_3c
    invoke-static {v3, v4, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v3

    :cond_40
    invoke-virtual {v3}, Landroid/graphics/Typeface;->getStyle()I

    move-result v4

    not-int v4, v4

    and-int/2addr v4, v2

    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_4d

    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_4d
    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_56

    const/high16 v5, -0x41800000  # -0.25f

    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setTextSkewX(F)V

    :cond_56
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getFontWeightAdjustment()I
    .registers 2

    iget v0, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    return v0
.end method

.method public getSpanTypeId()I
    .registers 2

    invoke-virtual {p0}, Landroid/text/style/StyleSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method

.method public getStyle()I
    .registers 2

    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 4

    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    iget v1, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    invoke-static {p1, v0, v1}, Landroid/text/style/StyleSpan;->apply(Landroid/graphics/Paint;II)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .registers 4

    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    iget v1, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    invoke-static {p1, v0, v1}, Landroid/text/style/StyleSpan;->apply(Landroid/graphics/Paint;II)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/text/style/StyleSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
