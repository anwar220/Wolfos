# classes4.dex

.class public Lcom/android/internal/util/MimeIconUtils;
.super Ljava/lang/Object;


# static fields
.field private static final sCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/ContentResolver$MimeTypeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/MimeIconUtils;->sCache:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildGenericTypeInfo(Ljava/lang/String;)Landroid/content/ContentResolver$MimeTypeInfo;
    .registers 6

    const-string v0, "audio/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const v0, 0x108039d

    const v1, 0x10405d6

    const v2, 0x10405d7

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    :cond_16
    const-string/jumbo v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const v0, 0x10803ae

    const v1, 0x10405e5

    const v2, 0x10405e6

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    :cond_2d
    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    const v0, 0x10803a8

    const v1, 0x10405df

    const v2, 0x10405e0

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    :cond_43
    const-string/jumbo v0, "text/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const v0, 0x10803ad

    const v1, 0x10405da

    const v2, 0x10405db

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    :cond_5a
    invoke-static {}, Llibcore/content/type/MimeMap;->getDefault()Llibcore/content/type/MimeMap;

    move-result-object v0

    nop

    invoke-virtual {v0, p0}, Llibcore/content/type/MimeMap;->guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llibcore/content/type/MimeMap;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_74

    invoke-static {p0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    invoke-static {v1}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v2

    return-object v2

    :cond_74
    const v2, 0x10803a7

    const v3, 0x10405dd

    const v4, 0x10405de

    invoke-static {p0, v2, v3, v4}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v2

    return-object v2
.end method

.method private static buildTypeInfo(Ljava/lang/String;)Landroid/content/ContentResolver$MimeTypeInfo;
    .registers 11

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_610

    :cond_8
    goto/16 :goto_54e

    :sswitch_a
    const-string/jumbo v0, "text/javascript"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x27

    goto/16 :goto_54f

    :sswitch_17
    const-string/jumbo v0, "text/x-c++src"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x15

    goto/16 :goto_54f

    :sswitch_24
    const-string/jumbo v0, "text/x-c++hdr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x14

    goto/16 :goto_54f

    :sswitch_31
    const-string v0, "application/x-x509-user-cert"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    goto/16 :goto_54f

    :sswitch_3d
    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x6a

    goto/16 :goto_54f

    :sswitch_49
    const-string v0, "application/rdf+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xd

    goto/16 :goto_54f

    :sswitch_55
    const-string v0, "application/mac-binhex40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x29

    goto/16 :goto_54f

    :sswitch_61
    const-string v0, "application/x-quicktimeplayer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x64

    goto/16 :goto_54f

    :sswitch_6d
    const-string v0, "application/x-webarchive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x35

    goto/16 :goto_54f

    :sswitch_79
    const-string v0, "application/x-font-woff"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x41

    goto/16 :goto_54f

    :sswitch_85
    const-string v0, "application/vnd.stardivision.writer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x5c

    goto/16 :goto_54f

    :sswitch_91
    const-string v0, "application/vnd.oasis.opendocument.spreadsheet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x51

    goto/16 :goto_54f

    :sswitch_9d
    const-string v0, "application/x-kspread"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x56

    goto/16 :goto_54f

    :sswitch_a9
    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.slideshow"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x6f

    goto/16 :goto_54f

    :sswitch_b5
    const-string v0, "application/x-pkcs12"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    goto/16 :goto_54f

    :sswitch_c0
    const-string v0, "application/x-object"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xf

    goto/16 :goto_54f

    :sswitch_cc
    const-string v0, "application/font-woff"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x40

    goto/16 :goto_54f

    :sswitch_d8
    const-string v0, "application/vnd.oasis.opendocument.text-master"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x59

    goto/16 :goto_54f

    :sswitch_e4
    const-string v0, "application/x-7z-compressed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x38

    goto/16 :goto_54f

    :sswitch_f0
    const-string v0, "application/javascript"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x25

    goto/16 :goto_54f

    :sswitch_fc
    const-string v0, "application/vnd.oasis.opendocument.presentation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x4f

    goto/16 :goto_54f

    :sswitch_108
    const-string v0, "application/x-latex"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x20

    goto/16 :goto_54f

    :sswitch_114
    const-string v0, "application/x-kword"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x62

    goto/16 :goto_54f

    :sswitch_120
    const-string v0, "application/vnd.sun.xml.impress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x4c

    goto/16 :goto_54f

    :sswitch_12c
    const-string v0, "application/vnd.oasis.opendocument.graphics-template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x44

    goto/16 :goto_54f

    :sswitch_138
    const-string v0, "application/x-debian-package"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x2d

    goto/16 :goto_54f

    :sswitch_144
    const-string v0, "application/x-apple-diskimage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x2c

    goto/16 :goto_54f

    :sswitch_150
    const-string/jumbo v0, "text/x-haskell"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x1a

    goto/16 :goto_54f

    :sswitch_15d
    const-string v0, "application/x-pkcs7-crl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x7

    goto/16 :goto_54f

    :sswitch_168
    const-string v0, "application/x-gtar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x2e

    goto/16 :goto_54f

    :sswitch_174
    const-string v0, "application/x-font"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x3f

    goto/16 :goto_54f

    :sswitch_180
    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x68

    goto/16 :goto_54f

    :sswitch_18c
    const-string v0, "application/x-pkcs7-certificates"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    goto/16 :goto_54f

    :sswitch_198
    const-string v0, "application/msword"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x66

    goto/16 :goto_54f

    :sswitch_1a4
    const-string v0, "application/x-abiword"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x61

    goto/16 :goto_54f

    :sswitch_1b0
    const-string/jumbo v0, "text/x-tex"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x1f

    goto/16 :goto_54f

    :sswitch_1bd
    const-string/jumbo v0, "text/x-tcl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x1e

    goto/16 :goto_54f

    :sswitch_1ca
    const-string/jumbo v0, "text/x-csh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x19

    goto/16 :goto_54f

    :sswitch_1d7
    const-string/jumbo v0, "text/vcard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x3c

    goto/16 :goto_54f

    :sswitch_1e4
    const-string v0, "application/vnd.google-apps.document"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x63

    goto/16 :goto_54f

    :sswitch_1f0
    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x6e

    goto/16 :goto_54f

    :sswitch_1fc
    const-string v0, "application/vnd.stardivision.impress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x4b

    goto/16 :goto_54f

    :sswitch_208
    const-string v0, "application/x-texinfo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x21

    goto/16 :goto_54f

    :sswitch_214
    const-string v0, "application/xhtml+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x10

    goto/16 :goto_54f

    :sswitch_220
    const-string v0, "application/vnd.stardivision.writer-global"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x5d

    goto/16 :goto_54f

    :sswitch_22c
    const-string/jumbo v0, "text/x-vcard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x3b

    goto/16 :goto_54f

    :sswitch_239
    const-string v0, "application/vnd.oasis.opendocument.graphics"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x43

    goto/16 :goto_54f

    :sswitch_245
    const-string v0, "application/pgp-keys"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto/16 :goto_54f

    :sswitch_250
    const-string v0, "application/x-rar-compressed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x3a

    goto/16 :goto_54f

    :sswitch_25c
    const-string v0, "application/ecmascript"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x23

    goto/16 :goto_54f

    :sswitch_268
    const-string/jumbo v0, "vnd.android.document/directory"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto/16 :goto_54f

    :sswitch_274
    const-string/jumbo v0, "text/x-vcalendar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x3e

    goto/16 :goto_54f

    :sswitch_281
    const-string v0, "application/vnd.google-apps.drawing"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x49

    goto/16 :goto_54f

    :sswitch_28d
    const-string v0, "application/x-stuffit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x33

    goto/16 :goto_54f

    :sswitch_299
    const-string v0, "application/pgp-signature"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto/16 :goto_54f

    :sswitch_2a4
    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto/16 :goto_54f

    :sswitch_2af
    const-string v0, "application/x-iso9660-image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x2f

    goto/16 :goto_54f

    :sswitch_2bb
    const-string v0, "application/json"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x24

    goto/16 :goto_54f

    :sswitch_2c7
    const-string v0, "application/gzip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x37

    goto/16 :goto_54f

    :sswitch_2d3
    const-string v0, "application/vnd.oasis.opendocument.spreadsheet-template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x52

    goto/16 :goto_54f

    :sswitch_2df
    const-string v0, "application/x-font-ttf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x42

    goto/16 :goto_54f

    :sswitch_2eb
    const-string v0, "application/x-pkcs7-mime"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xb

    goto/16 :goto_54f

    :sswitch_2f7
    const-string/jumbo v0, "text/x-java"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x1b

    goto/16 :goto_54f

    :sswitch_304
    const-string/jumbo v0, "text/x-dsrc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x18

    goto/16 :goto_54f

    :sswitch_311
    const-string/jumbo v0, "text/x-csrc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x17

    goto/16 :goto_54f

    :sswitch_31e
    const-string/jumbo v0, "text/x-chdr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x16

    goto/16 :goto_54f

    :sswitch_32b
    const-string v0, "application/vnd.ms-excel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x69

    goto/16 :goto_54f

    :sswitch_337
    const-string v0, "application/vnd.sun.xml.impress.template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x4d

    goto/16 :goto_54f

    :sswitch_343
    const-string v0, "application/x-webarchive-xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x36

    goto/16 :goto_54f

    :sswitch_34f
    const-string v0, "application/vnd.sun.xml.writer.global"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x5f

    goto/16 :goto_54f

    :sswitch_35b
    const-string v0, "application/vnd.oasis.opendocument.text-web"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x5b

    goto/16 :goto_54f

    :sswitch_367
    const-string v0, "application/x-javascript"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x28

    goto/16 :goto_54f

    :sswitch_373
    const-string v0, "application/vnd.sun.xml.draw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x47

    goto/16 :goto_54f

    :sswitch_37f
    const-string v0, "application/vnd.sun.xml.calc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x54

    goto/16 :goto_54f

    :sswitch_38b
    const-string v0, "application/vnd.google-apps.presentation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x50

    goto/16 :goto_54f

    :sswitch_397
    const-string/jumbo v0, "text/calendar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x3d

    goto/16 :goto_54f

    :sswitch_3a4
    const-string/jumbo v0, "text/xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x13

    goto/16 :goto_54f

    :sswitch_3b1
    const-string/jumbo v0, "text/css"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x11

    goto/16 :goto_54f

    :sswitch_3be
    const-string v0, "application/vnd.sun.xml.draw.template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x48

    goto/16 :goto_54f

    :sswitch_3ca
    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x67

    goto/16 :goto_54f

    :sswitch_3d6
    const-string v0, "application/vnd.ms-powerpoint"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x6c

    goto/16 :goto_54f

    :sswitch_3e2
    const-string v0, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x6d

    goto/16 :goto_54f

    :sswitch_3ee
    const-string/jumbo v0, "text/html"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x12

    goto/16 :goto_54f

    :sswitch_3fb
    const-string v0, "application/x-pkcs7-certreqresp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x6

    goto/16 :goto_54f

    :sswitch_406
    const-string v0, "application/x-pkcs7-signature"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xc

    goto/16 :goto_54f

    :sswitch_412
    const-string v0, "application/zip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x2b

    goto/16 :goto_54f

    :sswitch_41e
    const-string v0, "application/xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x26

    goto/16 :goto_54f

    :sswitch_42a
    const-string v0, "application/rar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x2a

    goto/16 :goto_54f

    :sswitch_436
    const-string v0, "application/pdf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x4a

    goto/16 :goto_54f

    :sswitch_442
    const-string v0, "inode/directory"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto/16 :goto_54f

    :sswitch_44d
    const-string v0, "application/atom+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x22

    goto/16 :goto_54f

    :sswitch_459
    const-string v0, "application/vnd.oasis.opendocument.text-template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x5a

    goto/16 :goto_54f

    :sswitch_465
    const-string v0, "application/x-shockwave-flash"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x65

    goto/16 :goto_54f

    :sswitch_471
    const-string v0, "application/x-tar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x34

    goto/16 :goto_54f

    :sswitch_47d
    const-string v0, "application/x-lzx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x32

    goto/16 :goto_54f

    :sswitch_489
    const-string v0, "application/x-lzh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x31

    goto/16 :goto_54f

    :sswitch_495
    const-string v0, "application/x-lha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x30

    goto/16 :goto_54f

    :sswitch_4a1
    const-string v0, "application/x-deb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x39

    goto/16 :goto_54f

    :sswitch_4ad
    const-string v0, "application/x-kpresenter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x4e

    goto/16 :goto_54f

    :sswitch_4b9
    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x6b

    goto/16 :goto_54f

    :sswitch_4c5
    const-string v0, "application/vnd.sun.xml.calc.template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x55

    goto/16 :goto_54f

    :sswitch_4d1
    const-string v0, "application/vnd.sun.xml.writer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x5e

    goto/16 :goto_54f

    :sswitch_4dd
    const-string v0, "application/vnd.oasis.opendocument.text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x58

    goto/16 :goto_54f

    :sswitch_4e9
    const-string v0, "application/vnd.sun.xml.writer.template"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x60

    goto :goto_54f

    :sswitch_4f4
    const-string v0, "application/vnd.oasis.opendocument.image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x45

    goto :goto_54f

    :sswitch_4ff
    const-string/jumbo v0, "text/x-pascal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x1d

    goto :goto_54f

    :sswitch_50b
    const-string v0, "application/rss+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0xe

    goto :goto_54f

    :sswitch_516
    const-string/jumbo v0, "text/x-literate-haskell"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x1c

    goto :goto_54f

    :sswitch_522
    const-string v0, "application/x-x509-ca-cert"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x8

    goto :goto_54f

    :sswitch_52d
    const-string v0, "application/vnd.google-apps.spreadsheet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x57

    goto :goto_54f

    :sswitch_538
    const-string v0, "application/vnd.stardivision.draw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x46

    goto :goto_54f

    :sswitch_543
    const-string v0, "application/vnd.stardivision.calc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x53

    goto :goto_54f

    :goto_54e
    move v0, v1

    :goto_54f
    const v2, 0x10405e4

    const v3, 0x10405e3

    const v4, 0x10405e2

    const v5, 0x10405e1

    const v6, 0x10405db

    const v7, 0x10405da

    const v8, 0x10405de

    const v9, 0x10405dd

    packed-switch v0, :pswitch_data_7d2

    invoke-static {p0}, Lcom/android/internal/util/MimeIconUtils;->buildGenericTypeInfo(Ljava/lang/String;)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    :pswitch_56f  #0x6c, 0x6d, 0x6e, 0x6f
    const v0, 0x10803aa

    invoke-static {p0, v0, v5, v4}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    :pswitch_577  #0x69, 0x6a, 0x6b
    const v0, 0x10803a4

    invoke-static {p0, v0, v3, v2}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    :pswitch_57f  #0x66, 0x67, 0x68
    const v0, 0x10803af

    invoke-static {p0, v0, v7, v6}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    :pswitch_587  #0x64, 0x65
    const v0, 0x10803ae

    const v1, 0x10405e5

    const v2, 0x10405e6

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    :pswitch_595  #0x58, 0x59, 0x5a, 0x5b, 0x5c, 0x5d, 0x5e, 0x5f, 0x60, 0x61, 0x62, 0x63
    const v0, 0x10803a2

    invoke-static {p0, v0, v7, v6}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    :pswitch_59d  #0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57
    const v0, 0x10803ac

    invoke-static {p0, v0, v3, v2}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    :pswitch_5a5  #0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50
    const v0, 0x10803ab

    invoke-static {p0, v0, v5, v4}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    :pswitch_5ad  #0x4a
    const v0, 0x10803a9

    invoke-static {p0, v0, v7, v6}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    :pswitch_5b5  #0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49
    const v0, 0x10803a8

    const v1, 0x10405df

    const v2, 0x10405e0

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    :pswitch_5c3  #0x3f, 0x40, 0x41, 0x42
    const v0, 0x10803a6

    invoke-static {p0, v0, v9, v8}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    :pswitch_5cb  #0x3d, 0x3e
    const v0, 0x10803a3

    invoke-static {p0, v0, v9, v8}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    :pswitch_5d3  #0x3b, 0x3c
    const v0, 0x10803a1

    invoke-static {p0, v0, v9, v8}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    :pswitch_5db  #0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3a
    const v0, 0x10803a0

    const v1, 0x10405d8

    const v2, 0x10405d9

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    :pswitch_5e9  #0xd, 0xe, 0xf, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28
    const v0, 0x108039f

    invoke-static {p0, v0, v7, v6}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    :pswitch_5f1  #0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc
    const v0, 0x108039e

    invoke-static {p0, v0, v9, v8}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    :pswitch_5f9  #0x2
    const v0, 0x108039c

    const v2, 0x10405d5

    invoke-static {p0, v0, v2, v1}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    :pswitch_604  #0x0, 0x1
    const v0, 0x10803a5

    const v2, 0x10405dc

    invoke-static {p0, v0, v2, v1}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_610
    .sparse-switch
        -0x7f44465d -> :sswitch_543
        -0x7f43936e -> :sswitch_538
        -0x7955041d -> :sswitch_52d
        -0x76852540 -> :sswitch_522
        -0x72487174 -> :sswitch_516
        -0x70497061 -> :sswitch_50b
        -0x6bce7a7d -> :sswitch_4ff
        -0x69ebbc0a -> :sswitch_4f4
        -0x68255665 -> :sswitch_4e9
        -0x667e94ce -> :sswitch_4dd
        -0x610e9853 -> :sswitch_4d1
        -0x5ed1e487 -> :sswitch_4c5
        -0x59c3e1a9 -> :sswitch_4b9
        -0x529f368f -> :sswitch_4ad
        -0x505c7453 -> :sswitch_4a1
        -0x505c55ef -> :sswitch_495
        -0x505c53ba -> :sswitch_489
        -0x505c53aa -> :sswitch_47d
        -0x505c38af -> :sswitch_471
        -0x4f184216 -> :sswitch_465
        -0x4e7ea34b -> :sswitch_459
        -0x4d468544 -> :sswitch_44d
        -0x4d29f4b7 -> :sswitch_442
        -0x4a68144d -> :sswitch_436
        -0x4a680d1c -> :sswitch_42a
        -0x4a67f528 -> :sswitch_41e
        -0x4a67ee1e -> :sswitch_412
        -0x46f4a83d -> :sswitch_406
        -0x442bbceb -> :sswitch_3fb
        -0x4081b8b3 -> :sswitch_3ee
        -0x3ffe58cb -> :sswitch_3e2
        -0x3fe2a28f -> :sswitch_3d6
        -0x3ea35d2d -> :sswitch_3ca
        -0x3d99ba96 -> :sswitch_3be
        -0x3be339df -> :sswitch_3b1
        -0x3be2ebcb -> :sswitch_3a4
        -0x39206620 -> :sswitch_397
        -0x38b79e1d -> :sswitch_38b
        -0x2e7d3bf1 -> :sswitch_37f
        -0x2e7c8902 -> :sswitch_373
        -0x2b19e7bf -> :sswitch_367
        -0x28553dc7 -> :sswitch_35b
        -0x1c904afc -> :sswitch_34f
        -0x1978be74 -> :sswitch_343
        -0x17a6095d -> :sswitch_337
        -0x15d566cf -> :sswitch_32b
        -0xf95e0f6 -> :sswitch_31e
        -0xf95b608 -> :sswitch_311
        -0xf9541a9 -> :sswitch_304
        -0xf92ca87 -> :sswitch_2f7
        -0xd9915b7 -> :sswitch_2eb
        -0xd3a98c4 -> :sswitch_2df
        -0x6850aa0 -> :sswitch_2d3
        -0x29e3947 -> :sswitch_2c7
        -0x29cf5b9 -> :sswitch_2bb
        0x19ac196 -> :sswitch_2af
        0x4d6213b -> :sswitch_2a4
        0x9c18ec5 -> :sswitch_299
        0xabdbfcb -> :sswitch_28d
        0xea677b5 -> :sswitch_281
        0xfa318bd -> :sswitch_274
        0x12030ada -> :sswitch_268
        0x120a481c -> :sswitch_25c
        0x15b1ac3f -> :sswitch_250
        0x1785e3c7 -> :sswitch_245
        0x198f4610 -> :sswitch_239
        0x1de3300f -> :sswitch_22c
        0x22098aaf -> :sswitch_220
        0x23fe04b0 -> :sswitch_214
        0x26370b01 -> :sswitch_208
        0x27e80391 -> :sswitch_1fc
        0x2967ba15 -> :sswitch_1f0
        0x2ac50064 -> :sswitch_1e4
        0x31080524 -> :sswitch_1d7
        0x310bafc1 -> :sswitch_1ca
        0x310beda6 -> :sswitch_1bd
        0x310bedf0 -> :sswitch_1b0
        0x33351d1e -> :sswitch_1a4
        0x35ebd34f -> :sswitch_198
        0x3e33d2d1 -> :sswitch_18c
        0x3f3a9e32 -> :sswitch_180
        0x44cefa23 -> :sswitch_174
        0x44cf7fb2 -> :sswitch_168
        0x49e22528 -> :sswitch_15d
        0x4ad1033d -> :sswitch_150
        0x4c7ff8d7 -> :sswitch_144
        0x4dd74e02 -> :sswitch_138
        0x5218db97 -> :sswitch_12c
        0x527dd1a5 -> :sswitch_120
        0x555a66a1 -> :sswitch_114
        0x555e8f3e -> :sswitch_108
        0x55a6501f -> :sswitch_fc
        0x55db338c -> :sswitch_f0
        0x56aaa917 -> :sswitch_e4
        0x57208d5d -> :sswitch_d8
        0x598d9a57 -> :sswitch_cc
        0x5b9b6c13 -> :sswitch_c0
        0x5dcc17e0 -> :sswitch_b5
        0x5e059df3 -> :sswitch_a9
        0x6196074a -> :sswitch_9d
        0x61f85627 -> :sswitch_91
        0x63c34841 -> :sswitch_85
        0x65e8cb02 -> :sswitch_79
        0x6e61adc2 -> :sswitch_6d
        0x6f632747 -> :sswitch_61
        0x7422834d -> :sswitch_55
        0x7566acc1 -> :sswitch_49
        0x76d7a0a2 -> :sswitch_3d
        0x79ada833 -> :sswitch_31
        0x7ae8e8aa -> :sswitch_24
        0x7ae91398 -> :sswitch_17
        0x7f17578f -> :sswitch_a
    .end sparse-switch

    :pswitch_data_7d2
    .packed-switch 0x0
        :pswitch_604  #00000000
        :pswitch_604  #00000001
        :pswitch_5f9  #00000002
        :pswitch_5f1  #00000003
        :pswitch_5f1  #00000004
        :pswitch_5f1  #00000005
        :pswitch_5f1  #00000006
        :pswitch_5f1  #00000007
        :pswitch_5f1  #00000008
        :pswitch_5f1  #00000009
        :pswitch_5f1  #0000000a
        :pswitch_5f1  #0000000b
        :pswitch_5f1  #0000000c
        :pswitch_5e9  #0000000d
        :pswitch_5e9  #0000000e
        :pswitch_5e9  #0000000f
        :pswitch_5e9  #00000010
        :pswitch_5e9  #00000011
        :pswitch_5e9  #00000012
        :pswitch_5e9  #00000013
        :pswitch_5e9  #00000014
        :pswitch_5e9  #00000015
        :pswitch_5e9  #00000016
        :pswitch_5e9  #00000017
        :pswitch_5e9  #00000018
        :pswitch_5e9  #00000019
        :pswitch_5e9  #0000001a
        :pswitch_5e9  #0000001b
        :pswitch_5e9  #0000001c
        :pswitch_5e9  #0000001d
        :pswitch_5e9  #0000001e
        :pswitch_5e9  #0000001f
        :pswitch_5e9  #00000020
        :pswitch_5e9  #00000021
        :pswitch_5e9  #00000022
        :pswitch_5e9  #00000023
        :pswitch_5e9  #00000024
        :pswitch_5e9  #00000025
        :pswitch_5e9  #00000026
        :pswitch_5e9  #00000027
        :pswitch_5e9  #00000028
        :pswitch_5db  #00000029
        :pswitch_5db  #0000002a
        :pswitch_5db  #0000002b
        :pswitch_5db  #0000002c
        :pswitch_5db  #0000002d
        :pswitch_5db  #0000002e
        :pswitch_5db  #0000002f
        :pswitch_5db  #00000030
        :pswitch_5db  #00000031
        :pswitch_5db  #00000032
        :pswitch_5db  #00000033
        :pswitch_5db  #00000034
        :pswitch_5db  #00000035
        :pswitch_5db  #00000036
        :pswitch_5db  #00000037
        :pswitch_5db  #00000038
        :pswitch_5db  #00000039
        :pswitch_5db  #0000003a
        :pswitch_5d3  #0000003b
        :pswitch_5d3  #0000003c
        :pswitch_5cb  #0000003d
        :pswitch_5cb  #0000003e
        :pswitch_5c3  #0000003f
        :pswitch_5c3  #00000040
        :pswitch_5c3  #00000041
        :pswitch_5c3  #00000042
        :pswitch_5b5  #00000043
        :pswitch_5b5  #00000044
        :pswitch_5b5  #00000045
        :pswitch_5b5  #00000046
        :pswitch_5b5  #00000047
        :pswitch_5b5  #00000048
        :pswitch_5b5  #00000049
        :pswitch_5ad  #0000004a
        :pswitch_5a5  #0000004b
        :pswitch_5a5  #0000004c
        :pswitch_5a5  #0000004d
        :pswitch_5a5  #0000004e
        :pswitch_5a5  #0000004f
        :pswitch_5a5  #00000050
        :pswitch_59d  #00000051
        :pswitch_59d  #00000052
        :pswitch_59d  #00000053
        :pswitch_59d  #00000054
        :pswitch_59d  #00000055
        :pswitch_59d  #00000056
        :pswitch_59d  #00000057
        :pswitch_595  #00000058
        :pswitch_595  #00000059
        :pswitch_595  #0000005a
        :pswitch_595  #0000005b
        :pswitch_595  #0000005c
        :pswitch_595  #0000005d
        :pswitch_595  #0000005e
        :pswitch_595  #0000005f
        :pswitch_595  #00000060
        :pswitch_595  #00000061
        :pswitch_595  #00000062
        :pswitch_595  #00000063
        :pswitch_587  #00000064
        :pswitch_587  #00000065
        :pswitch_57f  #00000066
        :pswitch_57f  #00000067
        :pswitch_57f  #00000068
        :pswitch_577  #00000069
        :pswitch_577  #0000006a
        :pswitch_577  #0000006b
        :pswitch_56f  #0000006c
        :pswitch_56f  #0000006d
        :pswitch_56f  #0000006e
        :pswitch_56f  #0000006f
    .end packed-switch
.end method

.method private static buildTypeInfo(Ljava/lang/String;III)Landroid/content/ContentResolver$MimeTypeInfo;
    .registers 9

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Llibcore/content/type/MimeMap;->getDefault()Llibcore/content/type/MimeMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Llibcore/content/type/MimeMap;->guessExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    const/4 v2, -0x1

    if-eq p3, v2, :cond_26

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2a

    :cond_26
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2a
    new-instance v3, Landroid/content/ContentResolver$MimeTypeInfo;

    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-direct {v3, v4, v2, v2}, Landroid/content/ContentResolver$MimeTypeInfo;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v3
.end method

.method public static getTypeInfo(Ljava/lang/String;)Landroid/content/ContentResolver$MimeTypeInfo;
    .registers 4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/util/MimeIconUtils;->sCache:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_9
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentResolver$MimeTypeInfo;

    if-nez v1, :cond_19

    invoke-static {p0}, Lcom/android/internal/util/MimeIconUtils;->buildTypeInfo(Ljava/lang/String;)Landroid/content/ContentResolver$MimeTypeInfo;

    move-result-object v2

    move-object v1, v2

    invoke-virtual {v0, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    monitor-exit v0

    return-object v1

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_1b

    throw v1
.end method
