# classes3.dex

.class public final Landroid/telephony/SignalStrengthUpdateRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SignalStrengthUpdateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mIsReportingRequestedWhileIdle:Z

.field private mIsSystemThresholdReportingRequestedWhileIdle:Z

.field private mSignalThresholdInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SignalThresholdInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/SignalStrengthUpdateRequest$Builder;->mSignalThresholdInfos:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/SignalStrengthUpdateRequest$Builder;->mIsReportingRequestedWhileIdle:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrengthUpdateRequest$Builder;->mIsSystemThresholdReportingRequestedWhileIdle:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/SignalStrengthUpdateRequest;
    .registers 6

    new-instance v0, Landroid/telephony/SignalStrengthUpdateRequest;

    iget-object v1, p0, Landroid/telephony/SignalStrengthUpdateRequest$Builder;->mSignalThresholdInfos:Ljava/util/List;

    iget-boolean v2, p0, Landroid/telephony/SignalStrengthUpdateRequest$Builder;->mIsReportingRequestedWhileIdle:Z

    iget-boolean v3, p0, Landroid/telephony/SignalStrengthUpdateRequest$Builder;->mIsSystemThresholdReportingRequestedWhileIdle:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telephony/SignalStrengthUpdateRequest;-><init>(Ljava/util/List;ZZLandroid/telephony/SignalStrengthUpdateRequest-IA;)V

    return-object v0
.end method

.method public setReportingRequestedWhileIdle(Z)Landroid/telephony/SignalStrengthUpdateRequest$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/SignalStrengthUpdateRequest$Builder;->mIsReportingRequestedWhileIdle:Z

    return-object p0
.end method

.method public setSignalThresholdInfos(Ljava/util/Collection;)Landroid/telephony/SignalStrengthUpdateRequest$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/telephony/SignalThresholdInfo;",
            ">;)",
            "Landroid/telephony/SignalStrengthUpdateRequest$Builder;"
        }
    .end annotation

    const-string v0, "SignalThresholdInfo collection must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SignalThresholdInfo;

    const-string v2, "SignalThresholdInfo in the collection must not be null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_9

    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/telephony/SignalStrengthUpdateRequest$Builder;->mSignalThresholdInfos:Ljava/util/List;

    new-instance v1, Landroid/telephony/SignalStrengthUpdateRequest$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/telephony/SignalStrengthUpdateRequest$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    new-instance v2, Landroid/telephony/SignalStrengthUpdateRequest$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/telephony/SignalStrengthUpdateRequest$Builder$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object p0
.end method

.method public setSystemThresholdReportingRequestedWhileIdle(Z)Landroid/telephony/SignalStrengthUpdateRequest$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-boolean p1, p0, Landroid/telephony/SignalStrengthUpdateRequest$Builder;->mIsSystemThresholdReportingRequestedWhileIdle:Z

    return-object p0
.end method
