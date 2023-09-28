# classes3.dex

.class public final Landroid/provider/SimPhonebookContract$ElementaryFiles;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SimPhonebookContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ElementaryFiles"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/SimPhonebookContract$ElementaryFiles$EfType;
    }
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/sim-elementary-file"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/sim-elementary-file"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EF_ADN:I = 0x1

.field public static final EF_FDN:I = 0x2

.field public static final EF_SDN:I = 0x3

.field public static final EF_TYPE:Ljava/lang/String; = "ef_type"

.field public static final EF_UNKNOWN:I = 0x0

.field public static final ELEMENTARY_FILES_PATH_SEGMENT:Ljava/lang/String; = "elementary_files"

.field public static final MAX_RECORDS:Ljava/lang/String; = "max_records"

.field public static final NAME_MAX_LENGTH:Ljava/lang/String; = "name_max_length"

.field public static final PATH_SEGMENT_EF_ADN:Ljava/lang/String; = "adn"

.field public static final PATH_SEGMENT_EF_FDN:Ljava/lang/String; = "fdn"

.field public static final PATH_SEGMENT_EF_SDN:Ljava/lang/String; = "sdn"

.field public static final PHONE_NUMBER_MAX_LENGTH:Ljava/lang/String; = "phone_number_max_length"

.field public static final RECORD_COUNT:Ljava/lang/String; = "record_count"

.field public static final SLOT_INDEX:Ljava/lang/String; = "slot_index"

.field public static final SUBSCRIPTION_ID:Ljava/lang/String; = "subscription_id"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Landroid/provider/SimPhonebookContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "elementary_files"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/SimPhonebookContract$ElementaryFiles;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getItemUri(II)Landroid/net/Uri;
    .registers 4

    sget-object v0, Landroid/provider/SimPhonebookContract$ElementaryFiles;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "subid"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1}, Landroid/provider/SimPhonebookContract;->getEfUriPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
