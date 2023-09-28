# classes3.dex

.class public final Landroid/service/rotationresolver/RotationResolutionRequest;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/rotationresolver/RotationResolutionRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCurrentRotation:I

.field private final mForegroundPackageName:Ljava/lang/String;

.field private final mProposedRotation:I

.field private final mShouldUseCamera:Z

.field private final mTimeoutMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/rotationresolver/RotationResolutionRequest$1;

    invoke-direct {v0}, Landroid/service/rotationresolver/RotationResolutionRequest$1;-><init>()V

    sput-object v0, Landroid/service/rotationresolver/RotationResolutionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-object v2, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mForegroundPackageName:Ljava/lang/String;

    const-class v7, Landroid/annotation/NonNull;

    const/4 v8, 0x0

    invoke-static {v7, v8, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v3, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mCurrentRotation:I

    const-class v7, Landroid/view/Surface$Rotation;

    invoke-static {v7, v8, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput v4, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mProposedRotation:I

    const-class v7, Landroid/view/Surface$Rotation;

    invoke-static {v7, v8, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-boolean v1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mShouldUseCamera:Z

    iput-wide v5, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mTimeoutMillis:J

    const-class v7, Landroid/annotation/DurationMillisLong;

    invoke-static {v7, v8, v5, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZJ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mForegroundPackageName:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p2, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mCurrentRotation:I

    const-class v0, Landroid/view/Surface$Rotation;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput p3, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mProposedRotation:I

    const-class v0, Landroid/view/Surface$Rotation;

    invoke-static {v0, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-boolean p4, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mShouldUseCamera:Z

    iput-wide p5, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mTimeoutMillis:J

    const-class v0, Landroid/annotation/DurationMillisLong;

    invoke-static {v0, v1, p5, p6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;J)V

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentRotation()I
    .registers 2

    iget v0, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mCurrentRotation:I

    return v0
.end method

.method public getForegroundPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mForegroundPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProposedRotation()I
    .registers 2

    iget v0, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mProposedRotation:I

    return v0
.end method

.method public getTimeoutMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mTimeoutMillis:J

    return-wide v0
.end method

.method public shouldUseCamera()Z
    .registers 2

    iget-boolean v0, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mShouldUseCamera:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RotationResolutionRequest { foregroundPackageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentRotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mCurrentRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", proposedRotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mProposedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shouldUseCamera = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mShouldUseCamera:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeoutMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mTimeoutMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mShouldUseCamera:Z

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mCurrentRotation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mProposedRotation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v1, p0, Landroid/service/rotationresolver/RotationResolutionRequest;->mTimeoutMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
