# classes4.dex

.class public final synthetic Lcom/android/internal/widget/BigPictureNotificationImageView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/widget/BigPictureNotificationImageView;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/BigPictureNotificationImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/BigPictureNotificationImageView$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/BigPictureNotificationImageView;

    iput-object p2, p0, Lcom/android/internal/widget/BigPictureNotificationImageView$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/BigPictureNotificationImageView$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/BigPictureNotificationImageView;

    iget-object v1, p0, Lcom/android/internal/widget/BigPictureNotificationImageView$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/BigPictureNotificationImageView;->lambda$setImageURIAsync$0$com-android-internal-widget-BigPictureNotificationImageView(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method