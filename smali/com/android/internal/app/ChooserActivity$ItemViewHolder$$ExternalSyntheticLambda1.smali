# classes4.dex

.class public final synthetic Lcom/android/internal/app/ChooserActivity$ItemViewHolder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/ChooserActivity$ItemViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/ChooserActivity$ItemViewHolder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->lambda$new$1$com-android-internal-app-ChooserActivity$ItemViewHolder(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
