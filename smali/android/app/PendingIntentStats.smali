# classes.dex

.class public Landroid/app/PendingIntentStats;
.super Ljava/lang/Object;


# instance fields
.field public final count:I

.field public final sizeKb:I

.field public final uid:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/PendingIntentStats;->uid:I

    iput p2, p0, Landroid/app/PendingIntentStats;->count:I

    iput p3, p0, Landroid/app/PendingIntentStats;->sizeKb:I

    return-void
.end method
