# classes.dex

.class public final Landroid/content/pm/Checksum;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/Checksum$TypeMask;,
        Landroid/content/pm/Checksum$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/Checksum;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_PARTIAL_MERKLE_ROOT_1M_SHA256:I = 0x20

.field public static final TYPE_PARTIAL_MERKLE_ROOT_1M_SHA512:I = 0x40

.field public static final TYPE_WHOLE_MD5:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_WHOLE_MERKLE_ROOT_4K_SHA256:I = 0x1

.field public static final TYPE_WHOLE_SHA1:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_WHOLE_SHA256:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_WHOLE_SHA512:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final mType:I

.field private final mValue:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/Checksum$1;

    invoke-direct {v0}, Landroid/content/pm/Checksum$1;-><init>()V

    sput-object v0, Landroid/content/pm/Checksum;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/content/pm/Checksum;->mType:I

    const-class v0, Landroid/content/pm/Checksum$Type;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object p2, p0, Landroid/content/pm/Checksum;->mValue:[B

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    iput v0, p0, Landroid/content/pm/Checksum;->mType:I

    const-class v2, Landroid/content/pm/Checksum$Type;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object v1, p0, Landroid/content/pm/Checksum;->mValue:[B

    const-class v2, Landroid/annotation/NonNull;

    invoke-static {v2, v3, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static readFromStream(Ljava/io/DataInputStream;)Landroid/content/pm/Checksum;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Ljava/io/DataInputStream;->read([B)I

    new-instance v2, Landroid/content/pm/Checksum;

    invoke-direct {v2, v0, v1}, Landroid/content/pm/Checksum;-><init>(I[B)V

    return-object v2
.end method

.method public static writeToStream(Ljava/io/DataOutputStream;Landroid/content/pm/Checksum;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/pm/Checksum;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1}, Landroid/content/pm/Checksum;->getValue()[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/content/pm/Checksum;->mType:I

    return v0
.end method

.method public getValue()[B
    .registers 2

    iget-object v0, p0, Landroid/content/pm/Checksum;->mValue:[B

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/content/pm/Checksum;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/Checksum;->mValue:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
