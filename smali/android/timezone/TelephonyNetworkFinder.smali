# classes3.dex

.class public final Landroid/timezone/TelephonyNetworkFinder;
.super Ljava/lang/Object;


# instance fields
.field private final mDelegate:Lcom/android/i18n/timezone/TelephonyNetworkFinder;


# direct methods
.method constructor <init>(Lcom/android/i18n/timezone/TelephonyNetworkFinder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/timezone/TelephonyNetworkFinder;

    iput-object v0, p0, Landroid/timezone/TelephonyNetworkFinder;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetworkFinder;

    return-void
.end method


# virtual methods
.method public findNetworkByMccMnc(Ljava/lang/String;Ljava/lang/String;)Landroid/timezone/TelephonyNetwork;
    .registers 5

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/timezone/TelephonyNetworkFinder;->mDelegate:Lcom/android/i18n/timezone/TelephonyNetworkFinder;

    invoke-virtual {v0, p1, p2}, Lcom/android/i18n/timezone/TelephonyNetworkFinder;->findNetworkByMccMnc(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/timezone/TelephonyNetwork;

    move-result-object v0

    if-eqz v0, :cond_14

    new-instance v1, Landroid/timezone/TelephonyNetwork;

    invoke-direct {v1, v0}, Landroid/timezone/TelephonyNetwork;-><init>(Lcom/android/i18n/timezone/TelephonyNetwork;)V

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method
