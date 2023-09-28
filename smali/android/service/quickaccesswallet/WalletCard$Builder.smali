# classes3.dex

.class public final Landroid/service/quickaccesswallet/WalletCard$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quickaccesswallet/WalletCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCardIcon:Landroid/graphics/drawable/Icon;

.field private mCardId:Ljava/lang/String;

.field private mCardImage:Landroid/graphics/drawable/Icon;

.field private mCardLabel:Ljava/lang/CharSequence;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCardIcon(Landroid/service/quickaccesswallet/WalletCard$Builder;)Landroid/graphics/drawable/Icon;
    .registers 1

    iget-object p0, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCardId(Landroid/service/quickaccesswallet/WalletCard$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCardImage(Landroid/service/quickaccesswallet/WalletCard$Builder;)Landroid/graphics/drawable/Icon;
    .registers 1

    iget-object p0, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardImage:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCardLabel(Landroid/service/quickaccesswallet/WalletCard$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContentDescription(Landroid/service/quickaccesswallet/WalletCard$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingIntent(Landroid/service/quickaccesswallet/WalletCard$Builder;)Landroid/app/PendingIntent;
    .registers 1

    iget-object p0, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardId:Ljava/lang/String;

    iput-object p2, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardImage:Landroid/graphics/drawable/Icon;

    iput-object p3, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mContentDescription:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public build()Landroid/service/quickaccesswallet/WalletCard;
    .registers 3

    new-instance v0, Landroid/service/quickaccesswallet/WalletCard;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/quickaccesswallet/WalletCard;-><init>(Landroid/service/quickaccesswallet/WalletCard$Builder;Landroid/service/quickaccesswallet/WalletCard-IA;)V

    return-object v0
.end method

.method public setCardIcon(Landroid/graphics/drawable/Icon;)Landroid/service/quickaccesswallet/WalletCard$Builder;
    .registers 2

    iput-object p1, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public setCardLabel(Ljava/lang/CharSequence;)Landroid/service/quickaccesswallet/WalletCard$Builder;
    .registers 2

    iput-object p1, p0, Landroid/service/quickaccesswallet/WalletCard$Builder;->mCardLabel:Ljava/lang/CharSequence;

    return-object p0
.end method
