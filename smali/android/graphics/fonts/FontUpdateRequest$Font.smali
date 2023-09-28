# classes.dex

.class public final Landroid/graphics/fonts/FontUpdateRequest$Font;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/FontUpdateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Font"
.end annotation


# static fields
.field private static final ATTR_AXIS:Ljava/lang/String; = "axis"

.field private static final ATTR_INDEX:Ljava/lang/String; = "index"

.field private static final ATTR_POSTSCRIPT_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_SLANT:Ljava/lang/String; = "slant"

.field private static final ATTR_WEIGHT:Ljava/lang/String; = "weight"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/fonts/FontUpdateRequest$Font;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFontStyle:Landroid/graphics/fonts/FontStyle;

.field private final mFontVariationSettings:Ljava/lang/String;

.field private final mIndex:I

.field private final mPostScriptName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/graphics/fonts/FontUpdateRequest$Font$1;

    invoke-direct {v0}, Landroid/graphics/fonts/FontUpdateRequest$Font$1;-><init>()V

    sput-object v0, Landroid/graphics/fonts/FontUpdateRequest$Font;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mPostScriptName:Ljava/lang/String;

    iput-object p2, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontStyle:Landroid/graphics/fonts/FontStyle;

    iput p3, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mIndex:I

    iput-object p4, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontVariationSettings:Ljava/lang/String;

    return-void
.end method

.method public static readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/fonts/FontUpdateRequest$Font;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_36

    const-string v2, "index"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/graphics/fonts/FontUpdateRequest;->-$$Nest$smgetAttributeValueInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    const/16 v4, 0x190

    const-string/jumbo v5, "weight"

    invoke-static {p0, v5, v4}, Landroid/graphics/fonts/FontUpdateRequest;->-$$Nest$smgetAttributeValueInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "slant"

    invoke-static {p0, v5, v3}, Landroid/graphics/fonts/FontUpdateRequest;->-$$Nest$smgetAttributeValueInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    const-string v5, "axis"

    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2b

    const-string v0, ""

    :cond_2b
    new-instance v5, Landroid/graphics/fonts/FontUpdateRequest$Font;

    new-instance v6, Landroid/graphics/fonts/FontStyle;

    invoke-direct {v6, v4, v3}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    invoke-direct {v5, v1, v6, v2, v0}, Landroid/graphics/fonts/FontUpdateRequest$Font;-><init>(Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/lang/String;)V

    return-object v5

    :cond_36
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "name attribute is missing in font tag."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static writeToXml(Landroid/util/TypedXmlSerializer;Landroid/graphics/fonts/FontUpdateRequest$Font;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getPostScriptName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getIndex()I

    move-result v0

    const-string v2, "index"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getFontStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v0

    const-string/jumbo v2, "weight"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getFontStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v0

    const-string/jumbo v2, "slant"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1}, Landroid/graphics/fonts/FontUpdateRequest$Font;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v0

    const-string v2, "axis"

    invoke-interface {p0, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3c

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/graphics/fonts/FontUpdateRequest$Font;

    iget v3, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mIndex:I

    iget v4, v2, Landroid/graphics/fonts/FontUpdateRequest$Font;->mIndex:I

    if-ne v3, v4, :cond_3a

    iget-object v3, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mPostScriptName:Ljava/lang/String;

    iget-object v4, v2, Landroid/graphics/fonts/FontUpdateRequest$Font;->mPostScriptName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontStyle:Landroid/graphics/fonts/FontStyle;

    iget-object v4, v2, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontStyle:Landroid/graphics/fonts/FontStyle;

    invoke-virtual {v3, v4}, Landroid/graphics/fonts/FontStyle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontVariationSettings:Ljava/lang/String;

    iget-object v4, v2, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontVariationSettings:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    goto :goto_3b

    :cond_3a
    move v0, v1

    :goto_3b
    return v0

    :cond_3c
    :goto_3c
    return v1
.end method

.method public getFontStyle()Landroid/graphics/fonts/FontStyle;
    .registers 2

    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontStyle:Landroid/graphics/fonts/FontStyle;

    return-object v0
.end method

.method public getFontVariationSettings()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontVariationSettings:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    iget v0, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mIndex:I

    return v0
.end method

.method public getPostScriptName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mPostScriptName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mPostScriptName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontStyle:Landroid/graphics/fonts/FontStyle;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontVariationSettings:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Font{mPostScriptName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mPostScriptName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mFontStyle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontStyle:Landroid/graphics/fonts/FontStyle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mIndex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mFontVariationSettings=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontVariationSettings:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mPostScriptName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontStyle:Landroid/graphics/fonts/FontStyle;

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontStyle:Landroid/graphics/fonts/FontStyle;

    invoke-virtual {v0}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/graphics/fonts/FontUpdateRequest$Font;->mFontVariationSettings:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    return-void
.end method
