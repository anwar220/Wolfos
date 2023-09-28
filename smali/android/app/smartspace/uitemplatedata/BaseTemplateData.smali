# classes.dex

.class public Landroid/app/smartspace/uitemplatedata/BaseTemplateData;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;,
        Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;,
        Landroid/app/smartspace/uitemplatedata/BaseTemplateData$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/smartspace/uitemplatedata/BaseTemplateData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLayoutWeight:I

.field private final mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

.field private final mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

.field private final mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

.field private final mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

.field private final mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

.field private final mTemplateType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$1;

    invoke-direct {v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$1;-><init>()V

    sput-object v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mTemplateType:I

    iput-object p2, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iput-object p3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iput-object p4, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iput-object p5, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iput-object p6, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iput p7, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mLayoutWeight:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mTemplateType:I

    sget-object v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    sget-object v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    sget-object v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    sget-object v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    sget-object v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mLayoutWeight:I

    return-void
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

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    iget v3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mTemplateType:I

    iget v4, v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mTemplateType:I

    if-ne v3, v4, :cond_4c

    iget v3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mLayoutWeight:I

    iget v4, v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mLayoutWeight:I

    if-ne v3, v4, :cond_4c

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    goto :goto_4d

    :cond_4c
    move v0, v2

    :goto_4d
    return v0
.end method

.method public getLayoutWeight()I
    .registers 2

    iget v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mLayoutWeight:I

    return v0
.end method

.method public getPrimaryItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object v0
.end method

.method public getSubtitleItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object v0
.end method

.method public getSubtitleSupplementalItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object v0
.end method

.method public getSupplementalAlarmItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object v0
.end method

.method public getSupplementalLineItem()Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    return-object v0
.end method

.method public getTemplateType()I
    .registers 2

    iget v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mTemplateType:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mTemplateType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mLayoutWeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseTemplateData{mTemplateType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mTemplateType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPrimaryItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSubtitleItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSubtitleSupplementalItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSupplementalLineItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSupplementalAlarmItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLayoutWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mLayoutWeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    iget v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mTemplateType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mPrimaryItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSubtitleSupplementalItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalLineItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mSupplementalAlarmItem:Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->mLayoutWeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
