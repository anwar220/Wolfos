# classes4.dex

.class Landroid/widget/TextClock$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextClock;


# direct methods
.method constructor <init>(Landroid/widget/TextClock;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/TextClock$2;->this$0:Landroid/widget/TextClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Landroid/widget/TextClock$2;->this$0:Landroid/widget/TextClock;

    invoke-virtual {v0, p0}, Landroid/widget/TextClock;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/TextClock$2;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-$$Nest$fgetmStopTicking(Landroid/widget/TextClock;)Z

    move-result v0

    if-nez v0, :cond_75

    iget-object v0, p0, Landroid/widget/TextClock$2;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-$$Nest$fgetmShouldRunTicker(Landroid/widget/TextClock;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_75

    :cond_16
    iget-object v0, p0, Landroid/widget/TextClock$2;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-$$Nest$monTimeChanged(Landroid/widget/TextClock;)V

    iget-object v0, p0, Landroid/widget/TextClock$2;->this$0:Landroid/widget/TextClock;

    invoke-static {v0}, Landroid/widget/TextClock;->-$$Nest$fgetmTime(Landroid/widget/TextClock;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextClock$2;->this$0:Landroid/widget/TextClock;

    invoke-static {v1}, Landroid/widget/TextClock;->-$$Nest$fgetmTime(Landroid/widget/TextClock;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextClock$2;->this$0:Landroid/widget/TextClock;

    invoke-static {v2}, Landroid/widget/TextClock;->-$$Nest$fgetmHasSeconds(Landroid/widget/TextClock;)Z

    move-result v2

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4b

    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/time/ZonedDateTime;->plusSeconds(J)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/time/ZonedDateTime;->withNano(I)Ljava/time/ZonedDateTime;

    move-result-object v2

    goto :goto_5b

    :cond_4b
    invoke-virtual {v0, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/time/ZonedDateTime;->plusMinutes(J)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/time/ZonedDateTime;->withSecond(I)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/time/ZonedDateTime;->withNano(I)Ljava/time/ZonedDateTime;

    move-result-object v2

    :goto_5b
    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_6f

    const-wide/16 v3, 0x3e8

    :cond_6f
    iget-object v5, p0, Landroid/widget/TextClock$2;->this$0:Landroid/widget/TextClock;

    invoke-virtual {v5, p0, v3, v4}, Landroid/widget/TextClock;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_75
    :goto_75
    return-void
.end method
