# classes4.dex

.class final Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/AssociationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SourceDumpContainer"
.end annotation


# instance fields
.field public mActiveTime:J

.field public final mState:Lcom/android/internal/app/procstats/AssociationState$SourceState;

.field public mTotalTime:J


# direct methods
.method public constructor <init>(Lcom/android/internal/app/procstats/AssociationState$SourceState;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/procstats/AssociationState$SourceDumpContainer;->mState:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    return-void
.end method
