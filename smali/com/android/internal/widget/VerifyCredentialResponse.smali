# classes4.dex

.class public final Lcom/android/internal/widget/VerifyCredentialResponse;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/VerifyCredentialResponse$Builder;,
        Lcom/android/internal/widget/VerifyCredentialResponse$ResponseCode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/widget/VerifyCredentialResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

.field public static final OK:Lcom/android/internal/widget/VerifyCredentialResponse;

.field public static final RESPONSE_ERROR:I = -0x1

.field public static final RESPONSE_OK:I = 0x0

.field public static final RESPONSE_RETRY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VerifyCredentialResponse"


# instance fields
.field private final mGatekeeperHAT:[B

.field private final mGatekeeperPasswordHandle:J

.field private final mResponseCode:I

.field private final mTimeout:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    invoke-direct {v0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->build()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-static {}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromError()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    new-instance v0, Lcom/android/internal/widget/VerifyCredentialResponse$1;

    invoke-direct {v0}, Lcom/android/internal/widget/VerifyCredentialResponse$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(II[BJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    iput p2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    iput-object p3, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperHAT:[B

    iput-wide p4, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    return-void
.end method

.method synthetic constructor <init>(II[BJLcom/android/internal/widget/VerifyCredentialResponse-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BJ)V

    return-void
.end method

.method public static fromError()Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 7

    new-instance v6, Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BJ)V

    return-object v6
.end method

.method public static fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 5

    invoke-virtual {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    invoke-virtual {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromTimeout(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    return-object v1

    :cond_10
    if-nez v0, :cond_33

    invoke-virtual {p0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    if-nez v1, :cond_25

    const-string v2, "VerifyCredentialResponse"

    const-string/jumbo v3, "verifyChallenge response had no associated payload"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromError()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    return-object v2

    :cond_25
    new-instance v2, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    invoke-direct {v2}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->setGatekeeperHAT([B)Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->build()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    return-object v2

    :cond_33
    invoke-static {}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromError()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    return-object v1
.end method

.method public static fromTimeout(I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 8

    new-instance v6, Lcom/android/internal/widget/VerifyCredentialResponse;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, v6

    move v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BJ)V

    return-object v6
.end method


# virtual methods
.method public containsGatekeeperPasswordHandle()Z
    .registers 5

    iget-wide v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getGatekeeperHAT()[B
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperHAT:[B

    return-object v0
.end method

.method public getGatekeeperPasswordHandle()J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    return-wide v0
.end method

.method public getResponseCode()I
    .registers 2

    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    return v0
.end method

.method public getTimeout()I
    .registers 2

    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    return v0
.end method

.method public isMatched()Z
    .registers 2

    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public stripPayload()Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 8

    new-instance v6, Lcom/android/internal/widget/VerifyCredentialResponse;

    iget v1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    iget v2, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(II[BJ)V

    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", GK HAT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperHAT:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1f

    move v1, v2

    goto :goto_20

    :cond_1f
    move v1, v3

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", GK PW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_33

    goto :goto_34

    :cond_33
    move v2, v3

    :goto_34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mResponseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperHAT:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-wide v0, p0, Lcom/android/internal/widget/VerifyCredentialResponse;->mGatekeeperPasswordHandle:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
