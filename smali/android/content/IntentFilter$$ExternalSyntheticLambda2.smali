# classes.dex

.class public final synthetic Landroid/content/IntentFilter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/content/IntentFilter;


# direct methods
.method public synthetic constructor <init>(Landroid/content/IntentFilter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/IntentFilter$$ExternalSyntheticLambda2;->f$0:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/content/IntentFilter$$ExternalSyntheticLambda2;->f$0:Landroid/content/IntentFilter;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->lambda$asPredicate$2$android-content-IntentFilter(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
