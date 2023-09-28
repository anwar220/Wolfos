# classes.dex

.class public final Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;
.super Landroid/app/smartspace/uitemplatedata/BaseTemplateData;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mHeadToHeadAction:Landroid/app/smartspace/uitemplatedata/TapAction;

.field private final mHeadToHeadFirstCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

.field private final mHeadToHeadFirstCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

.field private final mHeadToHeadSecondCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

.field private final mHeadToHeadSecondCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

.field private final mHeadToHeadTitle:Landroid/app/smartspace/uitemplatedata/Text;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$1;

    invoke-direct {v0}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData$1;-><init>()V

    sput-object v0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;ILandroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Icon;Landroid/app/smartspace/uitemplatedata/Icon;Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/TapAction;)V
    .registers 14

    invoke-direct/range {p0 .. p7}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;-><init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;I)V

    iput-object p8, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadTitle:Landroid/app/smartspace/uitemplatedata/Text;

    iput-object p9, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    iput-object p10, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    iput-object p11, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    iput-object p12, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    iput-object p13, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    return-void
.end method

.method synthetic constructor <init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;ILandroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Icon;Landroid/app/smartspace/uitemplatedata/Icon;Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/TapAction;Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData-IA;)V
    .registers 15

    invoke-direct/range {p0 .. p13}, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;-><init>(ILandroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemInfo;ILandroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Icon;Landroid/app/smartspace/uitemplatedata/Icon;Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/TapAction;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;-><init>(Landroid/os/Parcel;)V

    sget-object v0, Landroid/app/smartspace/uitemplatedata/Text;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/Text;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadTitle:Landroid/app/smartspace/uitemplatedata/Text;

    sget-object v0, Landroid/app/smartspace/uitemplatedata/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/Icon;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    sget-object v0, Landroid/app/smartspace/uitemplatedata/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/Icon;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    sget-object v0, Landroid/app/smartspace/uitemplatedata/Text;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/Text;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    sget-object v0, Landroid/app/smartspace/uitemplatedata/Text;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/Text;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    sget-object v0, Landroid/app/smartspace/uitemplatedata/TapAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/TapAction;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadAction:Landroid/app/smartspace/uitemplatedata/TapAction;

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
    instance-of v1, p1, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-super {p0, p1}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    move-object v1, p1

    check-cast v1, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadTitle:Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadTitle:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-static {v3, v4}, Landroid/app/smartspace/SmartspaceUtils;->isEqual(Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Text;)Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-static {v3, v4}, Landroid/app/smartspace/SmartspaceUtils;->isEqual(Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Text;)Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-static {v3, v4}, Landroid/app/smartspace/SmartspaceUtils;->isEqual(Landroid/app/smartspace/uitemplatedata/Text;Landroid/app/smartspace/uitemplatedata/Text;)Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v3, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    iget-object v4, v1, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    goto :goto_52

    :cond_51
    move v0, v2

    :goto_52
    return v0
.end method

.method public getHeadToHeadAction()Landroid/app/smartspace/uitemplatedata/TapAction;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    return-object v0
.end method

.method public getHeadToHeadFirstCompetitorIcon()Landroid/app/smartspace/uitemplatedata/Icon;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    return-object v0
.end method

.method public getHeadToHeadFirstCompetitorText()Landroid/app/smartspace/uitemplatedata/Text;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    return-object v0
.end method

.method public getHeadToHeadSecondCompetitorIcon()Landroid/app/smartspace/uitemplatedata/Icon;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    return-object v0
.end method

.method public getHeadToHeadSecondCompetitorText()Landroid/app/smartspace/uitemplatedata/Text;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    return-object v0
.end method

.method public getHeadToHeadTitle()Landroid/app/smartspace/uitemplatedata/Text;
    .registers 2

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadTitle:Landroid/app/smartspace/uitemplatedata/Text;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadTitle:Landroid/app/smartspace/uitemplatedata/Text;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadAction:Landroid/app/smartspace/uitemplatedata/TapAction;

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

    invoke-super {p0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " + SmartspaceHeadToHeadUiTemplateData{mH2HTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadTitle:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mH2HFirstCompetitorIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mH2HSecondCompetitorIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mH2HFirstCompetitorText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mH2HSecondCompetitorText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mH2HAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadAction:Landroid/app/smartspace/uitemplatedata/TapAction;

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

    invoke-super {p0, p1, p2}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadTitle:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorIcon:Landroid/app/smartspace/uitemplatedata/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadFirstCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadSecondCompetitorText:Landroid/app/smartspace/uitemplatedata/Text;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/HeadToHeadTemplateData;->mHeadToHeadAction:Landroid/app/smartspace/uitemplatedata/TapAction;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
