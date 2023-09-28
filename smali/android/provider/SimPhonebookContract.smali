# classes3.dex

.class public final Landroid/provider/SimPhonebookContract;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/SimPhonebookContract$ElementaryFiles;,
        Landroid/provider/SimPhonebookContract$SimRecords;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.simphonebook"

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final SUBSCRIPTION_ID_PATH_SEGMENT:Ljava/lang/String; = "subid"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.android.simphonebook"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/SimPhonebookContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEfUriPath(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_26

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported EfType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c  #0x3
    const-string/jumbo v0, "sdn"

    return-object v0

    :pswitch_20  #0x2
    const-string v0, "fdn"

    return-object v0

    :pswitch_23  #0x1
    const-string v0, "adn"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_23  #00000001
        :pswitch_20  #00000002
        :pswitch_1c  #00000003
    .end packed-switch
.end method
