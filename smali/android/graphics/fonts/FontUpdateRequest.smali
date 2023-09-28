# classes.dex

.class public final Landroid/graphics/fonts/FontUpdateRequest;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/fonts/FontUpdateRequest$Family;,
        Landroid/graphics/fonts/FontUpdateRequest$Font;,
        Landroid/graphics/fonts/FontUpdateRequest$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/fonts/FontUpdateRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_UPDATE_FONT_FAMILY:I = 0x1

.field public static final TYPE_UPDATE_FONT_FILE:I


# instance fields
.field private final mFd:Landroid/os/ParcelFileDescriptor;

.field private final mFontFamily:Landroid/graphics/fonts/FontUpdateRequest$Family;

.field private final mSignature:[B

.field private final mType:I


# direct methods
.method static bridge synthetic -$$Nest$smgetAttributeValueInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/fonts/FontUpdateRequest;->getAttributeValueInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/graphics/fonts/FontUpdateRequest$1;

    invoke-direct {v0}, Landroid/graphics/fonts/FontUpdateRequest$1;-><init>()V

    sput-object v0, Landroid/graphics/fonts/FontUpdateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/fonts/FontUpdateRequest$Family;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mType:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mFd:Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mSignature:[B

    iput-object p1, p0, Landroid/graphics/fonts/FontUpdateRequest;->mFontFamily:Landroid/graphics/fonts/FontUpdateRequest$Family;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mType:I

    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mSignature:[B

    const-class v0, Landroid/text/FontConfig$FontFamily;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/graphics/fonts/FontUpdateRequest$Family;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/fonts/FontUpdateRequest$Family;

    iput-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mFontFamily:Landroid/graphics/fonts/FontUpdateRequest$Family;

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mType:I

    iput-object p1, p0, Landroid/graphics/fonts/FontUpdateRequest;->mFd:Landroid/os/ParcelFileDescriptor;

    iput-object p2, p0, Landroid/graphics/fonts/FontUpdateRequest;->mSignature:[B

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mFontFamily:Landroid/graphics/fonts/FontUpdateRequest$Family;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Landroid/graphics/fonts/FontUpdateRequest;->createFontFamily(Ljava/lang/String;Ljava/util/List;)Landroid/graphics/fonts/FontUpdateRequest$Family;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/fonts/FontUpdateRequest;-><init>(Landroid/graphics/fonts/FontUpdateRequest$Family;)V

    return-void
.end method

.method private static createFontFamily(Ljava/lang/String;Ljava/util/List;)Landroid/graphics/fonts/FontUpdateRequest$Family;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;",
            ">;)",
            "Landroid/graphics/fonts/FontUpdateRequest$Family;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;

    new-instance v3, Landroid/graphics/fonts/FontUpdateRequest$Font;

    invoke-virtual {v2}, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v5

    invoke-virtual {v2}, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;->getIndex()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;->getAxes()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/fonts/FontVariationAxis;->toFontVariationSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/fonts/FontUpdateRequest$Font;-><init>(Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_36
    new-instance v1, Landroid/graphics/fonts/FontUpdateRequest$Family;

    invoke-direct {v1, p0, v0}, Landroid/graphics/fonts/FontUpdateRequest$Family;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method private static getAttributeValueInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    return p2

    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_c} :catch_d

    return v1

    :catch_d
    move-exception v0

    return p2
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->describeContents()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getFd()Landroid/os/ParcelFileDescriptor;
    .registers 2

    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mFd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getFontFamily()Landroid/graphics/fonts/FontUpdateRequest$Family;
    .registers 2

    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mFontFamily:Landroid/graphics/fonts/FontUpdateRequest$Family;

    return-object v0
.end method

.method public getSignature()[B
    .registers 2

    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mSignature:[B

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mSignature:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBlob([B)V

    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest;->mFontFamily:Landroid/graphics/fonts/FontUpdateRequest$Family;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
