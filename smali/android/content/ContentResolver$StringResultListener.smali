# classes.dex

.class Landroid/content/ContentResolver$StringResultListener;
.super Landroid/content/ContentResolver$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringResultListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/ContentResolver$ResultListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContentResolver$ResultListener;-><init>(Landroid/content/ContentResolver$ResultListener-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentResolver$StringResultListener-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/ContentResolver$StringResultListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic getResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver$StringResultListener;->getResultFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getResultFromBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
