# classes4.dex

.class public interface abstract Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
.super Ljava/lang/Object;


# direct methods
.method public static getInstance()Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    .registers 1

    const-class v0, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    return-object v0
.end method


# virtual methods
.method public abstract getExtraCallScreenProjectFlag()I
.end method

.method public abstract getExtraPipScreenProjectFlag()I
.end method

.method public abstract getExtraScreenProjectFlag()I
.end method

.method public abstract getLastFrame(Ljava/lang/String;)Z
.end method

.method public abstract getMiuiCastModePackageSettingsKey()Ljava/lang/String;
.end method

.method public abstract getMiuiCastModeSettingsKey()Ljava/lang/String;
.end method

.method public abstract getMiuiHangUpSettingsKey()Ljava/lang/String;
.end method

.method public abstract getMiuiInScreeningSettingsKey()Ljava/lang/String;
.end method

.method public abstract getMiuiPrivacyOnSettingsKey()Ljava/lang/String;
.end method

.method public abstract getMiuiSmallWindowSettingsKey()Ljava/lang/String;
.end method

.method public abstract getProjectionBlackList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getScreenShareProjectBlackList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract setProjectionBlackList(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public setScreenShareProjectBlackList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
