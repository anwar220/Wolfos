# classes3.dex

.class public final Landroid/provider/Telephony$CarrierId;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarrierId"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Telephony$CarrierId$All;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "carrier_id"

.field public static final CARRIER_ID:Ljava/lang/String; = "carrier_id"

.field public static final CARRIER_NAME:Ljava/lang/String; = "carrier_name"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PARENT_CARRIER_ID:Ljava/lang/String; = "parent_carrier_id"

.field public static final SPECIFIC_CARRIER_ID:Ljava/lang/String; = "specific_carrier_id"

.field public static final SPECIFIC_CARRIER_ID_NAME:Ljava/lang/String; = "specific_carrier_id_name"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://carrier_id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$CarrierId;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSpecificCarrierIdUriForSubscriptionId(I)Landroid/net/Uri;
    .registers 3

    sget-object v0, Landroid/provider/Telephony$CarrierId;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "specific"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getUriForSubscriptionId(I)Landroid/net/Uri;
    .registers 3

    sget-object v0, Landroid/provider/Telephony$CarrierId;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method