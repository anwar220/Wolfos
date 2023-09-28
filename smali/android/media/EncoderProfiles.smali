# classes2.dex

.class public final Landroid/media/EncoderProfiles;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/EncoderProfiles$AudioProfile;,
        Landroid/media/EncoderProfiles$VideoProfile;
    }
.end annotation


# instance fields
.field private audioProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/EncoderProfiles$AudioProfile;",
            ">;"
        }
    .end annotation
.end field

.field private durationSecs:I

.field private fileFormat:I

.field private videoProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/EncoderProfiles$VideoProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(II[Landroid/media/EncoderProfiles$VideoProfile;[Landroid/media/EncoderProfiles$AudioProfile;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/EncoderProfiles;->durationSecs:I

    iput p2, p0, Landroid/media/EncoderProfiles;->fileFormat:I

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/EncoderProfiles;->videoProfiles:Ljava/util/List;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/media/EncoderProfiles;->audioProfiles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAudioProfiles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/EncoderProfiles$AudioProfile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/EncoderProfiles;->audioProfiles:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultDurationSeconds()I
    .registers 2

    iget v0, p0, Landroid/media/EncoderProfiles;->durationSecs:I

    return v0
.end method

.method public getRecommendedFileFormat()I
    .registers 2

    iget v0, p0, Landroid/media/EncoderProfiles;->fileFormat:I

    return v0
.end method

.method public getVideoProfiles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/EncoderProfiles$VideoProfile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/EncoderProfiles;->videoProfiles:Ljava/util/List;

    return-object v0
.end method
