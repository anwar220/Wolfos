# classes2.dex

.class public final Landroid/view/displayhash/VerifiedDisplayHash;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/displayhash/VerifiedDisplayHash;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBoundsInWindow:Landroid/graphics/Rect;

.field private final mHashAlgorithm:Ljava/lang/String;

.field private final mImageHash:[B

.field private final mTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/displayhash/VerifiedDisplayHash$1;

    invoke-direct {v0}, Landroid/view/displayhash/VerifiedDisplayHash$1;-><init>()V

    sput-object v0, Landroid/view/displayhash/VerifiedDisplayHash;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLandroid/graphics/Rect;Ljava/lang/String;[B)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mTimeMillis:J

    const-class v0, Landroid/annotation/CurrentTimeMillisLong;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;J)V

    iput-object p3, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mBoundsInWindow:Landroid/graphics/Rect;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p4, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mHashAlgorithm:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p5, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mImageHash:[B

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    iput-wide v0, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mTimeMillis:J

    const-class v5, Landroid/annotation/CurrentTimeMillisLong;

    const/4 v6, 0x0

    invoke-static {v5, v6, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;J)V

    iput-object v2, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mBoundsInWindow:Landroid/graphics/Rect;

    const-class v5, Landroid/annotation/NonNull;

    invoke-static {v5, v6, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v3, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mHashAlgorithm:Ljava/lang/String;

    const-class v5, Landroid/annotation/NonNull;

    invoke-static {v5, v6, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v4, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mImageHash:[B

    const-class v5, Landroid/annotation/NonNull;

    invoke-static {v5, v6, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private byteArrayToString([B)Ljava/lang/String;
    .registers 9

    if-nez p1, :cond_5

    const-string v0, "null"

    return-object v0

    :cond_5
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    const-string v1, "[]"

    return-object v1

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_19
    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-byte v6, p1, v3

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "%02X"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v3, v0, :cond_3c

    const/16 v1, 0x5d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_3c
    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_19
.end method

.method private imageHashToString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mImageHash:[B

    invoke-direct {p0, v0}, Landroid/view/displayhash/VerifiedDisplayHash;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBoundsInWindow()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mBoundsInWindow:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getHashAlgorithm()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mHashAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getImageHash()[B
    .registers 2

    iget-object v0, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mImageHash:[B

    return-object v0
.end method

.method public getTimeMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mTimeMillis:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VerifiedDisplayHash { timeMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", boundsInWindow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mBoundsInWindow:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hashAlgorithm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mHashAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageHash = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/view/displayhash/VerifiedDisplayHash;->imageHashToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mBoundsInWindow:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mHashAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/displayhash/VerifiedDisplayHash;->mImageHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
