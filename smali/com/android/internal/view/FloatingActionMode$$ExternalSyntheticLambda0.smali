# classes4.dex

.class public final synthetic Lcom/android/internal/view/FloatingActionMode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/view/FloatingActionMode;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/view/FloatingActionMode;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/view/FloatingActionMode$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/view/FloatingActionMode;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/view/FloatingActionMode$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/view/FloatingActionMode;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/FloatingActionMode;->lambda$setFloatingToolbar$0$com-android-internal-view-FloatingActionMode(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
