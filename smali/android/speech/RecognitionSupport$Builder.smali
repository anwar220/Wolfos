# classes3.dex

.class public final Landroid/speech/RecognitionSupport$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBuilderFieldsSet:J

.field private mInstalledOnDeviceLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnlineLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingOnDeviceLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedOnDeviceLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/speech/RecognitionSupport$Builder;->mBuilderFieldsSet:J

    return-void
.end method

.method private checkNotUsed()V
    .registers 5

    iget-wide v0, p0, Landroid/speech/RecognitionSupport$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addInstalledOnDeviceLanguage(Ljava/lang/String;)Landroid/speech/RecognitionSupport$Builder;
    .registers 3

    iget-object v0, p0, Landroid/speech/RecognitionSupport$Builder;->mInstalledOnDeviceLanguages:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/speech/RecognitionSupport$Builder;->setInstalledOnDeviceLanguages(Ljava/util/List;)Landroid/speech/RecognitionSupport$Builder;

    :cond_c
    iget-object v0, p0, Landroid/speech/RecognitionSupport$Builder;->mInstalledOnDeviceLanguages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addOnlineLanguage(Ljava/lang/String;)Landroid/speech/RecognitionSupport$Builder;
    .registers 3

    iget-object v0, p0, Landroid/speech/RecognitionSupport$Builder;->mOnlineLanguages:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/speech/RecognitionSupport$Builder;->setOnlineLanguages(Ljava/util/List;)Landroid/speech/RecognitionSupport$Builder;

    :cond_c
    iget-object v0, p0, Landroid/speech/RecognitionSupport$Builder;->mOnlineLanguages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPendingOnDeviceLanguage(Ljava/lang/String;)Landroid/speech/RecognitionSupport$Builder;
    .registers 3

    iget-object v0, p0, Landroid/speech/RecognitionSupport$Builder;->mPendingOnDeviceLanguages:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/speech/RecognitionSupport$Builder;->setPendingOnDeviceLanguages(Ljava/util/List;)Landroid/speech/RecognitionSupport$Builder;

    :cond_c
    iget-object v0, p0, Landroid/speech/RecognitionSupport$Builder;->mPendingOnDeviceLanguages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addSupportedOnDeviceLanguage(Ljava/lang/String;)Landroid/speech/RecognitionSupport$Builder;
    .registers 3

    iget-object v0, p0, Landroid/speech/RecognitionSupport$Builder;->mSupportedOnDeviceLanguages:Ljava/util/List;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/speech/RecognitionSupport$Builder;->setSupportedOnDeviceLanguages(Ljava/util/List;)Landroid/speech/RecognitionSupport$Builder;

    :cond_c
    iget-object v0, p0, Landroid/speech/RecognitionSupport$Builder;->mSupportedOnDeviceLanguages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/speech/RecognitionSupport;
    .registers 7

    invoke-direct {p0}, Landroid/speech/RecognitionSupport$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/speech/RecognitionSupport$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/speech/RecognitionSupport$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/RecognitionSupport$Builder;->mInstalledOnDeviceLanguages:Ljava/util/List;

    :cond_19
    iget-wide v0, p0, Landroid/speech/RecognitionSupport$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/RecognitionSupport$Builder;->mPendingOnDeviceLanguages:Ljava/util/List;

    :cond_28
    iget-wide v0, p0, Landroid/speech/RecognitionSupport$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_37

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/RecognitionSupport$Builder;->mSupportedOnDeviceLanguages:Ljava/util/List;

    :cond_37
    iget-wide v0, p0, Landroid/speech/RecognitionSupport$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_46

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/RecognitionSupport$Builder;->mOnlineLanguages:Ljava/util/List;

    :cond_46
    new-instance v0, Landroid/speech/RecognitionSupport;

    iget-object v1, p0, Landroid/speech/RecognitionSupport$Builder;->mInstalledOnDeviceLanguages:Ljava/util/List;

    iget-object v2, p0, Landroid/speech/RecognitionSupport$Builder;->mPendingOnDeviceLanguages:Ljava/util/List;

    iget-object v3, p0, Landroid/speech/RecognitionSupport$Builder;->mSupportedOnDeviceLanguages:Ljava/util/List;

    iget-object v4, p0, Landroid/speech/RecognitionSupport$Builder;->mOnlineLanguages:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/speech/RecognitionSupport;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public setInstalledOnDeviceLanguages(Ljava/util/List;)Landroid/speech/RecognitionSupport$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/speech/RecognitionSupport$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/speech/RecognitionSupport$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/speech/RecognitionSupport$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/speech/RecognitionSupport$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/speech/RecognitionSupport$Builder;->mInstalledOnDeviceLanguages:Ljava/util/List;

    return-object p0
.end method

.method public setOnlineLanguages(Ljava/util/List;)Landroid/speech/RecognitionSupport$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/speech/RecognitionSupport$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/speech/RecognitionSupport$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/speech/RecognitionSupport$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/speech/RecognitionSupport$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/speech/RecognitionSupport$Builder;->mOnlineLanguages:Ljava/util/List;

    return-object p0
.end method

.method public setPendingOnDeviceLanguages(Ljava/util/List;)Landroid/speech/RecognitionSupport$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/speech/RecognitionSupport$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/speech/RecognitionSupport$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/speech/RecognitionSupport$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/speech/RecognitionSupport$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/speech/RecognitionSupport$Builder;->mPendingOnDeviceLanguages:Ljava/util/List;

    return-object p0
.end method

.method public setSupportedOnDeviceLanguages(Ljava/util/List;)Landroid/speech/RecognitionSupport$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/speech/RecognitionSupport$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/speech/RecognitionSupport$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/speech/RecognitionSupport$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/speech/RecognitionSupport$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/speech/RecognitionSupport$Builder;->mSupportedOnDeviceLanguages:Ljava/util/List;

    return-object p0
.end method
