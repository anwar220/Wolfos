# classes.dex

.class public final Landroid/app/wallpapereffectsgeneration/TexturedMesh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wallpapereffectsgeneration/TexturedMesh$Builder;,
        Landroid/app/wallpapereffectsgeneration/TexturedMesh$VerticesLayoutType;,
        Landroid/app/wallpapereffectsgeneration/TexturedMesh$IndicesLayoutType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/wallpapereffectsgeneration/TexturedMesh;",
            ">;"
        }
    .end annotation
.end field

.field public static final INDICES_LAYOUT_TRIANGLES:I = 0x1

.field public static final INDICES_LAYOUT_UNDEFINED:I = 0x0

.field public static final VERTICES_LAYOUT_POSITION3_UV2:I = 0x1

.field public static final VERTICES_LAYOUT_UNDEFINED:I


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mIndices:[I

.field private mIndicesLayoutType:I

.field private mVertices:[F

.field private mVerticesLayoutType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/wallpapereffectsgeneration/TexturedMesh$1;

    invoke-direct {v0}, Landroid/app/wallpapereffectsgeneration/TexturedMesh$1;-><init>()V

    sput-object v0, Landroid/app/wallpapereffectsgeneration/TexturedMesh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;[I[FII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh;->mIndices:[I

    iput-object p3, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh;->mVertices:[F

    iput p4, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh;->mIndicesLayoutType:I

    iput p5, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh;->mVerticesLayoutType:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Bitmap;[I[FIILandroid/app/wallpapereffectsgeneration/TexturedMesh-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/app/wallpapereffectsgeneration/TexturedMesh;-><init>(Landroid/graphics/Bitmap;[I[FII)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh;->mIndicesLayoutType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh;->mVerticesLayoutType:I

    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh;->mIndices:[I

    invoke-virtual {v0}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    iput-object v2, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh;->mVertices:[F
    :try_end_35
    .catchall {:try_start_1d .. :try_end_35} :catchall_3a

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_3a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/wallpapereffectsgeneration/TexturedMesh-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/wallpapereffectsgeneration/TexturedMesh;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIndices()[I
    .registers 2

    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh;->mIndices:[I

    return-object v0
.end method

.method public getIndicesLayoutType()I
    .registers 2

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh;->mIndicesLayoutType:I

    return v0
.end method

.method public getVertices()[F
    .registers 2

    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh;->mVertices:[F

    return-object v0
.end method

.method public getVerticesLayoutType()I
    .registers 2

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh;->mVerticesLayoutType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh;->mIndicesLayoutType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh;->mVerticesLayoutType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_13
    iget-object v1, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh;->mIndices:[I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v1, p0, Landroid/app/wallpapereffectsgeneration/TexturedMesh;->mVertices:[F

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBlob([B)V
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_29

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-void

    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
