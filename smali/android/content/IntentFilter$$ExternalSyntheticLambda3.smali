# classes.dex

.class public final synthetic Landroid/content/IntentFilter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/content/IntentFilter;

.field public final synthetic f$1:Landroid/content/ContentResolver;


# direct methods
.method public synthetic constructor <init>(Landroid/content/IntentFilter;Landroid/content/ContentResolver;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/IntentFilter$$ExternalSyntheticLambda3;->f$0:Landroid/content/IntentFilter;

    iput-object p2, p0, Landroid/content/IntentFilter$$ExternalSyntheticLambda3;->f$1:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Landroid/content/IntentFilter$$ExternalSyntheticLambda3;->f$0:Landroid/content/IntentFilter;

    iget-object v1, p0, Landroid/content/IntentFilter$$ExternalSyntheticLambda3;->f$1:Landroid/content/ContentResolver;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Landroid/content/IntentFilter;->lambda$asPredicateWithTypeResolution$3$android-content-IntentFilter(Landroid/content/ContentResolver;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
