# classes4.dex

.class public final synthetic Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/ChooserActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/app/ChooserActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverActivity;->onProfileClick(Landroid/view/View;)V

    return-void
.end method
