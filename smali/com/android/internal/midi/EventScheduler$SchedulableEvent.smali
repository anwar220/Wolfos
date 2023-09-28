# classes4.dex

.class public Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/midi/EventScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SchedulableEvent"
.end annotation


# instance fields
.field private volatile mNext:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

.field private mTimestamp:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmNext(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->mNext:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmNext(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->mNext:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->mNext:Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    iput-wide p1, p0, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->mTimestamp:J

    return-void
.end method


# virtual methods
.method public getTimestamp()J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->mTimestamp:J

    return-wide v0
.end method

.method public setTimestamp(J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->mTimestamp:J

    return-void
.end method
