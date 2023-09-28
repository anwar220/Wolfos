# classes4.dex

.class public final Landroid/widget/AnalogClock$InspectionCompanion;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/AnalogClock;",
        ">;"
    }
.end annotation


# instance fields
.field private mDialTintBlendModeId:I

.field private mDialTintListId:I

.field private mHourHandTintBlendModeId:I

.field private mHourHandTintListId:I

.field private mMinuteHandTintBlendModeId:I

.field private mMinuteHandTintListId:I

.field private mPropertiesMapped:Z

.field private mSecondHandTintBlendModeId:I

.field private mSecondHandTintListId:I

.field private mTimeZoneId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4

    const-string v0, "dialTintBlendMode"

    const/4 v1, 0x6

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mDialTintBlendModeId:I

    const-string v0, "dialTintList"

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mDialTintListId:I

    const-string v0, "hourHandTintBlendMode"

    const/16 v1, 0x8

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mHourHandTintBlendModeId:I

    const-string v0, "hourHandTintList"

    const/4 v1, 0x7

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mHourHandTintListId:I

    const-string/jumbo v0, "minuteHandTintBlendMode"

    const/16 v1, 0xa

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mMinuteHandTintBlendModeId:I

    const-string/jumbo v0, "minuteHandTintList"

    const/16 v1, 0x9

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mMinuteHandTintListId:I

    const-string/jumbo v0, "secondHandTintBlendMode"

    const/16 v1, 0xc

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mSecondHandTintBlendModeId:I

    const-string/jumbo v0, "secondHandTintList"

    const/16 v1, 0xb

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mSecondHandTintListId:I

    const-string/jumbo v0, "timeZone"

    const v1, 0x10103cc

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mTimeZoneId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public readProperties(Landroid/widget/AnalogClock;Landroid/view/inspector/PropertyReader;)V
    .registers 5

    iget-boolean v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_56

    iget v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mDialTintBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/AnalogClock;->getDialTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mDialTintListId:I

    invoke-virtual {p1}, Landroid/widget/AnalogClock;->getDialTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mHourHandTintBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/AnalogClock;->getHourHandTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mHourHandTintListId:I

    invoke-virtual {p1}, Landroid/widget/AnalogClock;->getHourHandTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mMinuteHandTintBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/AnalogClock;->getMinuteHandTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mMinuteHandTintListId:I

    invoke-virtual {p1}, Landroid/widget/AnalogClock;->getMinuteHandTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mSecondHandTintBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/AnalogClock;->getSecondHandTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mSecondHandTintListId:I

    invoke-virtual {p1}, Landroid/widget/AnalogClock;->getSecondHandTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/AnalogClock$InspectionCompanion;->mTimeZoneId:I

    invoke-virtual {p1}, Landroid/widget/AnalogClock;->getTimeZone()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    return-void

    :cond_56
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3

    check-cast p1, Landroid/widget/AnalogClock;

    invoke-virtual {p0, p1, p2}, Landroid/widget/AnalogClock$InspectionCompanion;->readProperties(Landroid/widget/AnalogClock;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
