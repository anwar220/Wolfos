# classes4.dex

.class public interface abstract Lcom/android/internal/textservice/ISpellCheckerSessionListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/textservice/ISpellCheckerSessionListener$Stub;,
        Lcom/android/internal/textservice/ISpellCheckerSessionListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
