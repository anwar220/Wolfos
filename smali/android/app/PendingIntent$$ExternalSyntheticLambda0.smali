# classes.dex

.class public final synthetic Landroid/app/PendingIntent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/PendingIntent;

.field public final synthetic f$1:Landroid/util/Pair;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;Landroid/util/Pair;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;->f$0:Landroid/app/PendingIntent;

    iput-object p2, p0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;->f$1:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;->f$0:Landroid/app/PendingIntent;

    iget-object v1, p0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;->f$1:Landroid/util/Pair;

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->lambda$notifyCancelListeners$0$android-app-PendingIntent(Landroid/util/Pair;)V

    return-void
.end method