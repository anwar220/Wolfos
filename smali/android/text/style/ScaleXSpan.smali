# classes3.dex

.class public Landroid/text/style/ScaleXSpan;
.super Landroid/text/style/MetricAffectingSpan;

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mProportion:F


# direct methods
.method public constructor <init>(F)V
    .registers 2

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput p1, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getScaleX()F
    .registers 2

    iget v0, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    return v0
.end method

.method public getSpanTypeId()I
    .registers 2

    invoke-virtual {p0}, Landroid/text/style/ScaleXSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 4

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    iget v1, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextScaleX(F)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .registers 4

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    iget v1, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextScaleX(F)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/text/style/ScaleXSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/text/style/ScaleXSpan;->mProportion:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
