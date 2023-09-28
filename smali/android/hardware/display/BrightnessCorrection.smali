# classes.dex

.class public final Landroid/hardware/display/BrightnessCorrection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;,
        Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/BrightnessCorrection;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCALE_AND_TRANSLATE_LOG:I = 0x1

.field private static final TAG_SCALE_AND_TRANSLATE_LOG:Ljava/lang/String; = "scale-and-translate-log"


# instance fields
.field private mImplementation:Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;


# direct methods
.method static bridge synthetic -$$Nest$smloadFloatFromXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)F
    .registers 2

    invoke-static {p0, p1}, Landroid/hardware/display/BrightnessCorrection;->loadFloatFromXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/display/BrightnessCorrection$1;

    invoke-direct {v0}, Landroid/hardware/display/BrightnessCorrection$1;-><init>()V

    sput-object v0, Landroid/hardware/display/BrightnessCorrection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/display/BrightnessCorrection;->mImplementation:Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;

    return-void
.end method

.method public static createScaleAndTranslateLog(FF)Landroid/hardware/display/BrightnessCorrection;
    .registers 4

    new-instance v0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;

    invoke-direct {v0, p0, p1}, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;-><init>(FF)V

    new-instance v1, Landroid/hardware/display/BrightnessCorrection;

    invoke-direct {v1, v0}, Landroid/hardware/display/BrightnessCorrection;-><init>(Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;)V

    return-object v1
.end method

.method private static loadFloatFromXml(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)F
    .registers 4

    const/4 v0, 0x0

    const/high16 v1, 0x7fc00000  # Float.NaN

    invoke-interface {p0, v0, p1, v1}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static loadFromXml(Landroid/util/TypedXmlPullParser;)Landroid/hardware/display/BrightnessCorrection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    :cond_4
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "scale-and-translate-log"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->loadFromXml(Landroid/util/TypedXmlPullParser;)Landroid/hardware/display/BrightnessCorrection;

    move-result-object v1

    return-object v1

    :cond_1c
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public apply(F)F
    .registers 3

    iget-object v0, p0, Landroid/hardware/display/BrightnessCorrection;->mImplementation:Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;

    invoke-interface {v0, p1}, Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;->apply(F)F

    move-result v0

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    instance-of v0, p1, Landroid/hardware/display/BrightnessCorrection;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/hardware/display/BrightnessCorrection;

    iget-object v1, v0, Landroid/hardware/display/BrightnessCorrection;->mImplementation:Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;

    iget-object v2, p0, Landroid/hardware/display/BrightnessCorrection;->mImplementation:Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroid/hardware/display/BrightnessCorrection;->mImplementation:Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public saveToXml(Landroid/util/TypedXmlSerializer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/display/BrightnessCorrection;->mImplementation:Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;

    invoke-interface {v0, p1}, Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/display/BrightnessCorrection;->mImplementation:Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;

    invoke-interface {v0}, Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/display/BrightnessCorrection;->mImplementation:Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;

    invoke-interface {v0, p1}, Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method
