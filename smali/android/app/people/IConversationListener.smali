# classes.dex

.class public interface abstract Landroid/app/people/IConversationListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/people/IConversationListener$Stub;,
        Landroid/app/people/IConversationListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.people.IConversationListener"


# virtual methods
.method public abstract onConversationUpdate(Landroid/app/people/ConversationChannel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
